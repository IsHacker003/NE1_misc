.class public final synthetic Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherResetPreferenceController$mfWCzapxXAW8MEUEh6X4wIuj8EU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherResetPreferenceController$mfWCzapxXAW8MEUEh6X4wIuj8EU;->f$0:Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherResetPreferenceController$mfWCzapxXAW8MEUEh6X4wIuj8EU;->f$0:Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;

    invoke-static {v0, p1}, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;->lambda$displayPreference$0(Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
