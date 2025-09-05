.class public Lcom/android/settings/fih/apn/ApnSelectPreference;
.super Landroid/preference/Preference;
.source "ApnSelectPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mApnReadOnly:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectedKey:Ljava/lang/String;

    .line 38
    sput-object v0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fih/apn/ApnSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const p1, 0x7f0d002e    # @layout/apn_preference_layout 'res/layout/apn_preference_layout.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/fih/apn/ApnSelectPreference;->setLayoutResource(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    const v0, 0x7f04002f    # @attr/apnPreferenceStyle

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fih/apn/ApnSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mProtectFromCheckedChange:Z

    .line 40
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectable:Z

    .line 41
    iput-boolean p1, p0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mApnReadOnly:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 45
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 47
    const p2, 0x7f0a004c    # @id/apn_radiobutton

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 48
    if-eqz p2, :cond_2

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 49
    check-cast p2, Landroid/widget/RadioButton;

    .line 50
    iget-boolean v0, p0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectable:Z

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/ApnSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    sput-object p2, Lcom/android/settings/fih/apn/ApnSelectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/ApnSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectedKey:Ljava/lang/String;

    .line 59
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mProtectFromCheckedChange:Z

    .line 60
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mProtectFromCheckedChange:Z

    .line 62
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 68
    :cond_2
    :goto_0
    const p2, 0x7f0a0387    # @id/text_layout

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 69
    if-eqz p2, :cond_3

    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_3
    return-object p1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 85
    const-string v0, "ApnSelectPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fih/apn/ApnSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean v0, p0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    if-eqz p2, :cond_2

    .line 91
    sget-object p2, Lcom/android/settings/fih/apn/ApnSelectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz p2, :cond_1

    .line 92
    sget-object p2, Lcom/android/settings/fih/apn/ApnSelectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 94
    :cond_1
    sput-object p1, Lcom/android/settings/fih/apn/ApnSelectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/ApnSelectPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectedKey:Ljava/lang/String;

    .line 96
    sget-object p1, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/fih/apn/ApnSelectPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_2
    const/4 p1, 0x0

    sput-object p1, Lcom/android/settings/fih/apn/ApnSelectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 99
    sput-object p1, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectedKey:Ljava/lang/String;

    .line 101
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 105
    return-void
.end method

.method public setChecked()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/ApnSelectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectedKey:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/fih/apn/ApnSelectPreference;->mSelectable:Z

    .line 109
    return-void
.end method
