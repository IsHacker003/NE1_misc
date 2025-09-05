.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 243
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_captioning_enabled"

    .line 244
    nop

    .line 243
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 246
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$200(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$200(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object p1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 249
    :cond_1
    return v0
.end method
