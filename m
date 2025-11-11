Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 255DCC4E7F1
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 15:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mZbPHPkG+9qGueCHeBl0jQYmB5I29pGm6bf2nQyWQv0=; b=TThZ5MN3hapcoUBk2mLTSMdjNM
	GODmOuvHG8636hAmS5hU3r03bSLk6WvhKVthXQ1r+wPu8kmjQVDiD6zDcIQ6y0YK4qwDvF0cefQ6S
	8NiN4JOs1xy0Hurlh7Rox/qXjpz/YVjGCSSDaLrDUwyZAqEON2SyR0f4oZlsBvhQ6u/c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIpRK-0008D1-FM;
	Tue, 11 Nov 2025 14:33:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <giometti@enneenne.com>) id 1vIjhC-0001ER-FX
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 08:25:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jtInkp6cTbOxKF5OWcD7Saw7qsxIsubZna2twrcJWNo=; b=B0/OKsohMT1ZynwKRmEX+o/mnN
 azppCKk6t9PU52edf4fZMxOR5DlBcxPRemLiLInKVtD+Qkpucwxtad/E5REvKWjKGEXJGimkDe9tV
 4LIQGgb1Wpzi3WlmcRSChKcBzY3pdLwfZPVHWgcFKYJiFgrCELhBT1hrebBs4kXNLqgg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jtInkp6cTbOxKF5OWcD7Saw7qsxIsubZna2twrcJWNo=; b=DOl7hdAF3qAGN7M2L28EaM2H0i
 TSKbRSBj7gIQH4LEXcik2cN0wa35rcLdwT0aYz9I6s49hj+jYGPmSApB4RCAcG5DzFtzjgq6zpbnZ
 1Tsg9kkfBmVXRDpYj2+v2fDjOKdn5QVdi3t5gDH6cj933GQ3ZXP6vjPrDnmDE6ejWy/g=;
Received: from smtpweb147.aruba.it ([62.149.158.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIjhB-0006Y6-NG for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 08:25:46 +0000
Received: from [192.168.1.56] ([79.0.204.227]) by Aruba SMTP with ESMTPSA
 id IjRpvB89Z3rWiIjRpvo9yP; Tue, 11 Nov 2025 09:09:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
 t=1762848599; bh=e2VKfhLBtfetGdLzQaFZSLBhdVbkUGkXPf4jjXRKteg=;
 h=Date:MIME-Version:Subject:To:From:Content-Type;
 b=AXJ4e5dw+jSyszcMYBEFl9RCo64n6ctWLi7ALyEfBW2CsNHdns58uFEPi6BIP0fSo
 +tB0UztyXs5sQMBKQyycck0J3O4LR0Dnk3QAhsnI09tGu8FmU8DcYE1wR6HJcad5yZ
 TLc+0c06i9zJ5NVTRlQs5GjG5nsPj9le/gGOTqLTjYyWY5Qcu3FWjQq5gmMaKCWsin
 /zKDeh7ZKMAATnb3tk1WbFnrvz4a8/3SGmCbbZzLCD1af4amWVvDCH5XIDWdZFYyW6
 QyGNAYKhUugKEMfbzLpPCuFgDDAzuQZNrfICnaEmr/m/0fSopNWEOSkZx7p8Qn9Y80
 b8l0RNeGvbW6A==
Message-ID: <6c8b4205-e5d2-4bce-a1ab-addb099097b8@enneenne.com>
Date: Tue, 11 Nov 2025 09:09:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Corey Minyard <corey@minyard.net>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>, Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-19-andriy.shevchenko@linux.intel.com>
From: Rodolfo Giometti <giometti@enneenne.com>
In-Reply-To: <20251110184727.666591-19-andriy.shevchenko@linux.intel.com>
X-CMAE-Envelope: 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
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/11/25 19:40, Andy Shevchenko wrote: > Use %ptSp instead
 of open coded variants to print content of > struct timespec64 in human
 readable
 format. > > Signed-off-by: Andy Shevchenko <andriy.shevch [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [62.149.158.147 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1vIjhB-0006Y6-NG
X-Mailman-Approved-At: Tue, 11 Nov 2025 14:33:45 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 18/23] pps: Switch to use %ptSp
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jaroslav Kysela <perex@perex.cz>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Konrad Dybcio <konradybcio@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Satish Kharat <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Stefan Haberland <sth@linux.ibm.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sean Paul <sean@poorly.run>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/11/25 19:40, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Rodolfo Giometti <giometti@enneenne.com>

Thanks,

Rodolfo Giometti

> ---
>   drivers/pps/generators/pps_gen_parport.c | 3 +--
>   drivers/pps/kapi.c                       | 3 +--
>   2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pps/generators/pps_gen_parport.c b/drivers/pps/generators/pps_gen_parport.c
> index f5eeb4dd01ad..05bbf8d30ef1 100644
> --- a/drivers/pps/generators/pps_gen_parport.c
> +++ b/drivers/pps/generators/pps_gen_parport.c
> @@ -80,8 +80,7 @@ static enum hrtimer_restart hrtimer_event(struct hrtimer *timer)
>   	/* check if we are late */
>   	if (expire_time.tv_sec != ts1.tv_sec || ts1.tv_nsec > lim) {
>   		local_irq_restore(flags);
> -		pr_err("we are late this time %lld.%09ld\n",
> -				(s64)ts1.tv_sec, ts1.tv_nsec);
> +		pr_err("we are late this time %ptSp\n", &ts1);
>   		goto done;
>   	}
>   
> diff --git a/drivers/pps/kapi.c b/drivers/pps/kapi.c
> index e9389876229e..6985c34de2ce 100644
> --- a/drivers/pps/kapi.c
> +++ b/drivers/pps/kapi.c
> @@ -163,8 +163,7 @@ void pps_event(struct pps_device *pps, struct pps_event_time *ts, int event,
>   	/* check event type */
>   	BUG_ON((event & (PPS_CAPTUREASSERT | PPS_CAPTURECLEAR)) == 0);
>   
> -	dev_dbg(&pps->dev, "PPS event at %lld.%09ld\n",
> -			(s64)ts->ts_real.tv_sec, ts->ts_real.tv_nsec);
> +	dev_dbg(&pps->dev, "PPS event at %ptSp\n", &ts->ts_real);
>   
>   	timespec_to_pps_ktime(&ts_real, ts->ts_real);
>   


-- 
GNU/Linux Solutions                  e-mail: giometti@enneenne.com
Linux Device Driver                          giometti@linux.it
Embedded Systems                     phone:  +39 349 2432127
UNIX programming


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
