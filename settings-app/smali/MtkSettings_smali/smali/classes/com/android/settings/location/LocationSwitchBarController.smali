.class public Lcom/android/settings/location/LocationSwitchBarController;
.super Ljava/lang/Object;
.source "LocationSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

.field private final mSwitch:Landroid/widget/Switch;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 37
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitch:Landroid/widget/Switch;

    .line 38
    new-instance p2, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 39
    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public onLocationModeChanged(IZ)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p1

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 68
    invoke-virtual {v1, v0}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 70
    invoke-virtual {v2, v0}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result v0

    .line 73
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 74
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, v1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 79
    :goto_0
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 81
    iget-boolean p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz p2, :cond_1

    .line 82
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 84
    :cond_1
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 85
    iget-boolean p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 89
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    .line 50
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    .line 58
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p1, p2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    .line 97
    return-void
.end method
