.class public Lcom/android/settings/SetupRedactionInterstitial;
.super Lcom/android/settings/notification/RedactionInterstitial;
.source "SetupRedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial;-><init>()V

    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 3

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/SetupRedactionInterstitial;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    nop

    .line 45
    const/4 p0, 0x1

    if-eqz p1, :cond_0

    .line 46
    move p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 43
    :goto_0
    invoke-virtual {v0, v1, p1, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 48
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/notification/RedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 60
    const-class v0, Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
