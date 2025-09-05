.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultVoiceInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;
    }
.end annotation


# instance fields
.field private mAssistRestrict:Ljava/lang/String;

.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    return-object p0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 122
    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    return-object p0

    .line 124
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isCurrentAssistVoiceService(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 0

    .line 134
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    .line 135
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 134
    :goto_0
    return p0
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 67
    nop

    .line 68
    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    move v1, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    .line 69
    iget-object v2, v5, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mAssistRestrict:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 70
    or-int v10, v1, v6

    .line 71
    new-instance v11, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mUserId:I

    move-object v1, v11

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    nop

    .line 68
    move v1, v10

    goto :goto_0

    .line 74
    :cond_0
    if-nez v1, :cond_1

    .line 75
    move v8, v9

    goto :goto_1

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 75
    move v8, v1

    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    .line 76
    nop

    .line 77
    xor-int/lit8 v6, v8, 0x1

    new-instance v11, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mUserId:I

    move-object v1, v11

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 43
    const/16 v0, 0x34c

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 60
    const v0, 0x7f150047    # @xml/default_voice_settings 'res/xml/default_voice_settings.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 50
    new-instance v0, Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/assist/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    .line 51
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-virtual {p1}, Lcom/android/settings/applications/assist/VoiceInputHelper;->buildUi()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->isCurrentAssistVoiceService(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mAssistRestrict:Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    .line 94
    iget-object v3, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_interaction_service"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "voice_recognition_service"

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->service:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->serviceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 100
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    return v2

    .line 104
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    .line 107
    iget-object v1, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_interaction_service"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_recognition_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    return v2

    .line 114
    :cond_2
    goto :goto_1

    .line 115
    :cond_3
    return v2
.end method
