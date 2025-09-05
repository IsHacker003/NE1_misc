.class public Lcom/android/settings/tts/TtsEnginePreference;
.super Landroid/support/v7/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Lcom/android/settings/tts/TtsEnginePreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 70
    const p1, 0x7f0d00fa    # @layout/preference_tts_engine 'res/layout/preference_tts_engine.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 72
    iput-object p3, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 73
    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 74
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 76
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    return-void
.end method

.method private displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .line 117
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying data alert for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    const v1, 0x1040014    # @android:string/dialog_alert_title

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v5, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f120e1a    # @string/tts_engine_security_warning 'This speech synthesis engine may be able to collect all the text that will be spoken, including pers ...'

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 124
    const v2, 0x104000a    # @android:string/ok

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 125
    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 129
    return-void
.end method

.method private makeCurrentEngine(Landroid/widget/Checkable;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 135
    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    if-eqz p2, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEnginePreference;->shouldDisplayDataAlert()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 142
    new-instance p2, Lcom/android/settings/tts/TtsEnginePreference$2;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    new-instance v0, Lcom/android/settings/tts/TtsEnginePreference$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, p2, v0}, Lcom/android/settings/tts/TtsEnginePreference;->displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    .line 159
    :cond_2
    :goto_0
    return-void

    .line 136
    :cond_3
    :goto_1
    return-void
.end method

.method private shouldDisplayDataAlert()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    if-eqz v0, :cond_1

    .line 89
    const v0, 0x7f0a03a0    # @id/tts_engine_radiobutton

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 90
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v1, p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 98
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 99
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 102
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 103
    return-void

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call to getView() before a call tosetSharedState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
