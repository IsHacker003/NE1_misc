.class public Lcom/android/settings/notification/NotificationFooterPreference;
.super Landroid/support/v7/preference/Preference;
.source "NotificationFooterPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationFooterPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 35
    const v0, 0x7f0400b9    # @attr/footerPreferenceStyle

    const v1, 0x101008e    # @android:attr/preferenceStyle

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationFooterPreference;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 1

    .line 54
    const v0, 0x7f08011f    # @drawable/ic_info_outline_24dp 'res/drawable/ic_info_outline_24dp.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationFooterPreference;->setIcon(I)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationFooterPreference;->setSelectable(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 47
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 48
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 51
    return-void
.end method
