.class public Lcom/mediatek/settings/sim/RadioPowerPreference;
.super Landroid/support/v7/preference/Preference;
.source "RadioPowerPreference.java"


# static fields
.field private static final ENG_LOAD:Z


# instance fields
.field private mController:Lcom/mediatek/settings/sim/RadioPowerController;

.field private mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mPowerEnabled:Z

.field private mPowerState:Z

.field private mRadioSwith:Landroid/widget/Switch;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "RadioPowerPreference"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/mediatek/settings/sim/RadioPowerPreference;->ENG_LOAD:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    return p0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/sim/RadioPowerPreference;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/sim/RadioPowerPreference;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSubId:I

    return p0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/sim/RadioPowerPreference;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->logInEng(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/sim/RadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/sim/RadioPowerPreference;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    return-object p0
.end method

.method private logInEng(Ljava/lang/String;)V
    .locals 1

    .line 170
    sget-boolean v0, Lcom/mediatek/settings/sim/RadioPowerPreference;->ENG_LOAD:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "RadioPowerPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 108
    const v0, 0x7f0a029e    # @id/radio_state

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    .line 109
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 111
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    new-instance v0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/RadioPowerPreference$1;-><init>(Lcom/mediatek/settings/sim/RadioPowerPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    const-string p1, "RadioPowerPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder, mPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    .line 143
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 144
    return-void
.end method

.method public setRadioEnabled(Z)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioEnabled, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->logInEng(Ljava/lang/String;)V

    .line 99
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public setRadioOn(Z)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioOn, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->logInEng(Ljava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    .line 88
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 91
    :cond_0
    return-void
.end method
