.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothWarmingUp"
.end annotation


# instance fields
.field private halfPermits:D

.field private slope:D

.field private final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    .line 232
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    .line 233
    return-void
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 4

    .line 237
    iget-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 238
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v0, v0

    div-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 239
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->halfPermits:D

    .line 241
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p3

    .line 242
    sub-double/2addr v0, p3

    iget-wide p3, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->halfPermits:D

    div-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    .line 243
    const-wide/high16 p3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p3, p1, p3

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    .line 245
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    goto :goto_1

    .line 247
    :cond_0
    cmpl-double p3, p1, v0

    if-nez p3, :cond_1

    .line 248
    iget-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    goto :goto_0

    .line 249
    :cond_1
    iget-wide p3, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    mul-double/2addr p3, v0

    div-double p1, p3, p1

    :goto_0
    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    .line 251
    :goto_1
    return-void
.end method
