Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4C8C49DDD
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 01:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G+eZ5VFgKl9Zz8OZ2BxEi6L4hWKHtQKsQ0zdQKma6DI=; b=SYevIEGVm/TfgpeGL81s0AePRu
	SbVml5m00qCHAKtISN41CP3FvHhFhtcX8THBc/mMQHQPqsIQm43sbDhWqmbdZuv+3a+j8ItQQiQ10
	qrkpBsJ/hY/MfOk+55ay+N/NyLka6BHZ7ejDOTqmgeNUXyL5GevD5OYKBpV3NuJWgh20=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIcGr-0005f4-4z;
	Tue, 11 Nov 2025 00:30:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vadim.fedorenko@linux.dev>) id 1vIbmP-0004Hp-FV
 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 23:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N5NdZ3Il1D+l8lwQLcK5dXwNIadjasDY9t8ilnV/mV0=; b=Ttkj5pRqajWBZCvlGqPO/DJoNm
 o/AF4+WWoynVClCp8qcBhG8CcoPxlqDlFYhNl8QS5Pl5EV9K3HuozV9eM9TJK3NQl8e3J6yfJuoWr
 IQfumTehwvljDUOj47H9Um8VeTMcz4Weh3Cp2lTicv0wcglO/gZNt4UoaOJT3E4VnNJ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N5NdZ3Il1D+l8lwQLcK5dXwNIadjasDY9t8ilnV/mV0=; b=QJAuxEIM4MQzJGv5cWFUmvqBv6
 KcaByizFOWnSrmZ+tqfJmbzwZzxMvXmUUUHJlgCC+ojPtpRS4rEg96tgLWj6ZamaWROjS/UiwgAhu
 Gx9zJGczHo9JnW9JTAIObFXjapO5FwOdg8pWQLlg2G3/4+hstfI+uSgvnXIIf4qg0jzM=;
Received: from out-181.mta0.migadu.com ([91.218.175.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIbmO-0000fP-I2 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 23:58:37 +0000
Message-ID: <3eb5379f-c7ad-4aea-ab9a-20e07b7f34d0@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1762817866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N5NdZ3Il1D+l8lwQLcK5dXwNIadjasDY9t8ilnV/mV0=;
 b=U0xyIRecUBR+iYd+jFcmevJu/4H+A2bbNJnN96yfE0hlgn9ZMrH3LxAIKYqZS4s3cJ1uvm
 +7WK+gk43pd/VuQQ8rDReqm1AlKlWm8GBWmK3v11GgPPZIdbI1RU8LPuoyCqW5EbUBDj5d
 3Ou4TSlLX99wMRUdq/vNAC0vrqSI3Ow=
Date: Mon, 10 Nov 2025 23:37:33 +0000
MIME-Version: 1.0
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
 <20251110184727.666591-20-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20251110184727.666591-20-andriy.shevchenko@linux.intel.com>
X-Migadu-Flow: FLOW_OUT
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/11/2025 18:40,
 Andy Shevchenko wrote: > Use %ptSp instead
 of open coded variants to print content of > struct timespec64 in human
 readable
 format. > > While at it, fix wrong use of %ptT against [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vIbmO-0000fP-I2
X-Mailman-Approved-At: Tue, 11 Nov 2025 00:30:02 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 19/23] ptp: ocp: Switch to use
 %ptSp
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
 Rodolfo Giometti <giometti@enneenne.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/11/2025 18:40, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> While at it, fix wrong use of %ptT against struct timespec64.
> It's kinda lucky that it worked just because the first member
> there 64-bit and it's of time64_t type. Now with %ptS it may
> be used correctly.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>   drivers/ptp/ptp_ocp.c | 15 ++++++---------
>   1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
> index a5c363252986..a0bb8d3045d2 100644
> --- a/drivers/ptp/ptp_ocp.c
> +++ b/drivers/ptp/ptp_ocp.c
> @@ -3261,7 +3261,7 @@ signal_show(struct device *dev, struct device_attribute *attr, char *buf)
>   			   signal->duty, signal->phase, signal->polarity);
>   
>   	ts = ktime_to_timespec64(signal->start);
> -	count += sysfs_emit_at(buf, count, " %ptT TAI\n", &ts);
> +	count += sysfs_emit_at(buf, count, " %ptS TAI\n", &ts);
>   
>   	return count;
>   }
> @@ -4287,11 +4287,9 @@ ptp_ocp_summary_show(struct seq_file *s, void *data)
>   		ns += (s64)bp->utc_tai_offset * NSEC_PER_SEC;
>   		sys_ts = ns_to_timespec64(ns);
>   
> -		seq_printf(s, "%7s: %lld.%ld == %ptT TAI\n", "PHC",
> -			   ts.tv_sec, ts.tv_nsec, &ts);
> -		seq_printf(s, "%7s: %lld.%ld == %ptT UTC offset %d\n", "SYS",
> -			   sys_ts.tv_sec, sys_ts.tv_nsec, &sys_ts,
> -			   bp->utc_tai_offset);
> +		seq_printf(s, "%7s: %ptSp == %ptS TAI\n", "PHC", &ts, &ts);
> +		seq_printf(s, "%7s: %ptSp == %ptS UTC offset %d\n", "SYS",
> +			   &sys_ts, &sys_ts, bp->utc_tai_offset);
>   		seq_printf(s, "%7s: PHC:SYS offset: %lld  window: %lld\n", "",
>   			   timespec64_to_ns(&ts) - ns,
>   			   post_ns - pre_ns);
> @@ -4499,9 +4497,8 @@ ptp_ocp_phc_info(struct ptp_ocp *bp)
>   		 ptp_clock_index(bp->ptp));
>   
>   	if (!ptp_ocp_gettimex(&bp->ptp_info, &ts, NULL))
> -		dev_info(&bp->pdev->dev, "Time: %lld.%ld, %s\n",
> -			 ts.tv_sec, ts.tv_nsec,
> -			 bp->sync ? "in-sync" : "UNSYNCED");
> +		dev_info(&bp->pdev->dev, "Time: %ptSp, %s\n",
> +			 &ts, bp->sync ? "in-sync" : "UNSYNCED");
>   }
>   
>   static void

Acked-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
