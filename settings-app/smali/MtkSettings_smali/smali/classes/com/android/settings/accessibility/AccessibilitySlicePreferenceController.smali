.class public Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AccessibilitySlicePreferenceController.java"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->ON:I

    .line 43
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->OFF:I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    .line 49
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal Component Name from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 101
    nop

    .line 102
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 105
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    return-object v1

    .line 108
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->isChecked()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 69
    return v2

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    return v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v2, p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method
