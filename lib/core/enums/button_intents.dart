// Enums for AyinzaButton intents, organized by button type

// Elevated Button Intents
enum AyinzaElevatedIntent {
  primary,
  submit,
  pay,
  save,
  continueAction, 
}

// Outline Button Intents
enum AyinzaOutlineIntent {
  secondary,
  cancel,
  edit,
  retry,
}

// Text Button Intents
enum AyinzaTextIntent {
  tertiary,
  seeMore,
  link,
  skip,
  forgotPassword,
}

// Floating Button Intents
enum AyinzaFloatingIntent {
  quickAction,
  add,
  compose,
  scan,
  next,
  previous,
  continueAction,
}

// Toggle Button Intents
enum AyinzaToggleIntent {
  switchAction,
  favorite,
  enable,
  disable,
}

// Two Segment Button Intents
enum AyinzaTwoSegmentIntent {
  dualAction,
  accept,
  decline,
  yes,
  no,
  login,
  signup,

}

// Custom Button Intents
enum AyinzaCustomIntent {
  special,
  branded,
  unique,
  getPremium,
  specialDeal,
}

// Badge Button Intents
enum AyinzaBadgeIntent {
  withCount,
  notifications,
  cart,
  inbox,
}

// Icon Button Intents
enum AyinzaIconIntent {
  iconOnly,
  quick,
  like,
  delete,
  share,
} 