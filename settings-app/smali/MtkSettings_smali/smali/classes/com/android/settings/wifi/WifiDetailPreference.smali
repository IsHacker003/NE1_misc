.class public Lcom/android/settings/wifi/WifiDetailPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiDetailPreference.java"


# instance fields
.field private mDetailText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const p1, 0x7f0d010b    # @layout/preference_widget_summary 'res/layout/preference_widget_summary.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiDetailPreference;->setWidgetLayoutResource(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 49
    const v0, 0x7f0a03dc    # @id/widget_summary

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    return-void
.end method

.method public setDetailText(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDetailPreference;->notifyChanged()V

    .line 44
    return-void
.end method
