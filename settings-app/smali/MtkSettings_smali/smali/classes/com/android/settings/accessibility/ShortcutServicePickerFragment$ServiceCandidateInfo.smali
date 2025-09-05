.class Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCandidateInfo"
.end annotation


# instance fields
.field final mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field final synthetic this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    .line 226
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 227
    iput-object p2, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 228
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f0f0000    # @mipmap/ic_accessibility_generic 'res/mipmap-hdpi/ic_accessibility_generic.png'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 5

    .line 232
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    .line 233
    invoke-virtual {v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 235
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    .line 237
    return-object v1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;->mServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 241
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 243
    nop

    .line 244
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 243
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 245
    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    return-object v2

    .line 250
    :cond_1
    return-object v2
.end method
