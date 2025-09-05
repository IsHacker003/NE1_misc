.class Lcom/android/settings/tts/TextToSpeechSettings$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    .line 255
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 259
    const-string p1, "TextToSpeechSettings"

    const-string v0, "Error while trying to synthesize sample text"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    .line 251
    return-void
.end method
