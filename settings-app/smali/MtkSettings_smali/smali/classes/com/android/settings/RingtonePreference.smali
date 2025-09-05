.class public Lcom/android/settings/RingtonePreference;
.super Landroid/support/v7/preference/Preference;
.source "RingtonePreference.java"


# static fields
.field private static AP_NAME:[Ljava/lang/String;


# instance fields
.field private mApType:I

.field private mFihAudioIndicationEnable:Z

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field protected mUserContext:Landroid/content/Context;

.field protected mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    const-string v0, "com.android.mms"

    const-string v1, "com.android.email"

    const-string v2, "android.calendar"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RingtonePreference;->AP_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/RingtonePreference;->setApType(Landroid/content/Context;)V

    .line 94
    sget-object v0, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    .line 98
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    .line 100
    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowSilent:Z

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1120120

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/RingtonePreference;->mFihAudioIndicationEnable:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    iput-boolean v1, p0, Lcom/android/settings/RingtonePreference;->mFihAudioIndicationEnable:Z

    .line 109
    const-string v0, "RingtonePreference-setting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find resource zzz_freq_fwk_media_audio_indication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/RingtonePreference;->mFihAudioIndicationEnable:Z

    if-eqz p1, :cond_0

    .line 113
    const-string p1, "RingtonePreference-setting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launch fih ringtone picker: mApType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/RingtonePreference;->mApType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance p1, Landroid/content/Intent;

    const-string v0, "fih.intent.action.RINGTONE_PICKER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 116
    :cond_0
    const-string p1, "RingtonePreference-setting"

    const-string v0, "Launch ringtone picker"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->setIntent(Landroid/content/Intent;)V

    .line 119
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->setUserId(I)V

    .line 120
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void
.end method

.method private setApType(Landroid/content/Context;)V
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 72
    const-string v0, "RingtonePreference-setting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApType(): class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/RingtonePreference;->mApType:I

    .line 74
    if-nez p1, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/RingtonePreference;->AP_NAME:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 79
    sget-object v1, Lcom/android/settings/RingtonePreference;->AP_NAME:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iput v0, p0, Lcom/android/settings/RingtonePreference;->mApType:I

    .line 81
    goto :goto_1

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    :goto_1
    const-string p1, "RingtonePreference-setting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApType(): mApType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/RingtonePreference;->mApType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 279
    if-eqz p3, :cond_1

    .line 280
    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 282
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 287
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 0

    .line 275
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 276
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    .line 204
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/android/settings/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 216
    const-string v0, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v0, "fih.intent.extra.ringtone.AP_TYPE"

    iget v1, p0, Lcom/android/settings/RingtonePreference;->mApType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    :cond_0
    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 0

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 233
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 256
    check-cast p2, Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_0

    .line 266
    return-void

    .line 270
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 271
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 273
    :cond_1
    return-void
.end method

.method public setRingtoneType(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    .line 150
    return-void
.end method

.method public setUserId(I)V
    .locals 1

    .line 124
    iput p1, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    .line 126
    return-void
.end method
