.class public Lcom/android/settings/network/ApnPreference;
.super Landroid/support/v7/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mEditable:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    const v0, 0x7f04002f    # @attr/apnPreferenceStyle

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    .line 57
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 58
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    .line 45
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 64
    const v0, 0x7f0a004c    # @id/apn_radiobutton

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    .line 66
    check-cast v0, Landroid/widget/RadioButton;

    .line 67
    iget-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 76
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 85
    :cond_2
    :goto_0
    const v0, 0x7f0a0387    # @id/text_layout

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_3
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 100
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    if-eqz p2, :cond_2

    .line 106
    sget-object p2, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz p2, :cond_1

    .line 107
    sget-object p2, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 109
    :cond_1
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 111
    sget-object p1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    const/4 p1, 0x0

    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 114
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 116
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 119
    if-eqz p1, :cond_0

    const v0, 0x7f0a0387    # @id/text_layout

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 123
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    const-string v0, "readOnly"

    iget-boolean v2, p0, Lcom/android/settings/network/ApnPreference;->mEditable:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v0, "sub_id"

    iget v2, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setApnEditable(Z)V
    .locals 3

    .line 159
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApnEditable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mEditable:Z

    .line 161
    return-void
.end method

.method public setChecked()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    .line 136
    return-void
.end method

.method public setSubId(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    .line 144
    return-void
.end method
