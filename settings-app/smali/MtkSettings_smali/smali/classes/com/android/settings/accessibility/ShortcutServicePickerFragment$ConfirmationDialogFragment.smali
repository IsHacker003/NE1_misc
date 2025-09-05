.class public Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ShortcutServicePickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmationDialogFragment"
.end annotation


# instance fields
.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    .locals 3

    .line 156
    new-instance v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;-><init>()V

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v2, "extra_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 160
    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 161
    new-instance p0, Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p0, v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->mToken:Landroid/os/IBinder;

    .line 162
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 167
    const/4 v0, 0x6

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    .line 185
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    instance-of p2, p1, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 187
    check-cast p1, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const-string v0, "extra_key"

    .line 188
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-static {p1, p2}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->access$000(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 173
    const-string v0, "extra_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 177
    nop

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->createCapabilitiesDialog(Landroid/app/Activity;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
