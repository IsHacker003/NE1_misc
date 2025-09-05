.class public Lcom/android/settings/wifi/LinkablePreference;
.super Landroid/support/v7/preference/Preference;
.source "LinkablePreference.java"


# instance fields
.field private mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 58
    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 59
    if-nez p1, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    if-nez v1, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 70
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-static {p1, v1, v2}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    move-result v1

    .line 75
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 78
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/LinkablePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030044    # @android:style/TextAppearance.Medium

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 82
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x11

    .line 78
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 87
    :cond_3
    return-void

    .line 65
    :cond_4
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 100
    iput-object p2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 101
    iput-object p3, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    .line 103
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 112
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 114
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 122
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 123
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method
