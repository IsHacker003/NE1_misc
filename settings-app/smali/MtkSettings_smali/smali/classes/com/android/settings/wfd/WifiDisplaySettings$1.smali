.class Lcom/android/settings/wfd/WifiDisplaySettings$1;
.super Landroid/support/v7/preference/Preference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 473
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 475
    const v0, 0x7f0a01ea    # @id/left_button

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 476
    const v1, 0x7f121021    # @string/wifi_display_pause 'Pause'

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 477
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v0, 0x7f0a02b4    # @id/right_button

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 485
    const v0, 0x7f121022    # @string/wifi_display_resume 'Resume'

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 486
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    return-void
.end method
