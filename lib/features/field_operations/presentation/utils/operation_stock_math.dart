double computeQuantityConsumed({
  required double quantitySent,
  required double quantityReturned,
}) {
  return (quantitySent - quantityReturned).clamp(0, quantitySent).toDouble();
}

double _normalizedQuantity(double value) {
  return double.parse(value.toStringAsFixed(2));
}

Map<String, double> availableByProductForItem({
  required Map<String, double> baseAvailableByProduct,
  required List<({String? productId, double quantity})> reservations,
  required int currentIndex,
}) {
  final adjusted = Map<String, double>.from(baseAvailableByProduct);

  for (var i = 0; i < reservations.length; i++) {
    if (i == currentIndex) {
      continue;
    }

    final reservation = reservations[i];
    final productId = reservation.productId;
    if (productId == null || reservation.quantity <= 0) {
      continue;
    }

    adjusted[productId] = ((adjusted[productId] ?? 0) - reservation.quantity)
        .clamp(0, double.infinity)
        .toDouble();
  }

  return adjusted;
}

bool hasSufficientStock({
  required double quantitySent,
  required double available,
}) {
  return _normalizedQuantity(quantitySent) <= _normalizedQuantity(available);
}

double returnedDelta({
  required double previousReturned,
  required double newReturned,
}) {
  return newReturned - previousReturned;
}
