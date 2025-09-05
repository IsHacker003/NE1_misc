.class Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 2

    .line 262
    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 263
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p2, p2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 264
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "checked"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p2, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p2, p2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 268
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "checked"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    .line 271
    :goto_0
    return p1
.end method
