double computeQuantityConsumed({
  required double quantitySent,
  required double quantityReturned,
}) {
  return (quantitySent - quantityReturned).clamp(0, quantitySent).toDouble();
}

bool hasSufficientStock({
  required double quantitySent,
  required double available,
}) {
  return quantitySent <= available;
}

double returnedDelta({
  required double previousReturned,
  required double newReturned,
}) {
  return newReturned - previousReturned;
}
