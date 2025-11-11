Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22105C4E7F0
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 15:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fzFwPKvi6djOHm7wajWa1WEzHuaPImsXIaSPiPJQ0cA=; b=X8XivkH37i5L77kyo21dFYCQ8X
	hrEGbZ5sgx/zqztpJ2OYifJVNRgDvjKR2M6OrVslQSAc2X8xMVpBErPkuwk7JK7siAV2ng458/o6P
	7oBdapYaabe15TT+M0KQPZy9vMZSzXJpe+I526SpuJ6TAS1Zw9MFY2K7u7FwvFVu4c7E=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIpRJ-0008Ch-Sv;
	Tue, 11 Nov 2025 14:33:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hverkuil+cisco@kernel.org>) id 1vIjGW-0000z0-Dv
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 07:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pqo49sUom4Ax8/5oMB7O551am4u2vZh+GPRUBYqOiSo=; b=kz+qXYFaUR0CtEEtNzPol3+Ok1
 SM7IF9z0hoNZR43kvf5p7AXnTeK5aNY28DZtERAueVmO6oigBua4dKcsOEJ7bq3L+wLTHw7qN4VJB
 CN7iDbGrwFc9UAb9jRwKOGLRzJ8XKZoZB81JUtumxtkEzgGaZpGW/8EpC227XsqYwt4I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pqo49sUom4Ax8/5oMB7O551am4u2vZh+GPRUBYqOiSo=; b=VKzWTFWettkhweowmSDPDqo5F8
 acWDSzlPfHPznr8PUtRUfH5+TJeGdZWFjD34htBTXq9Vle6XoOpA1ymrnZs3UWWcuoduFTK5cD1bx
 ersGEMaqmKGjd/OOCJQX1QlwoyA35dcVldetO7CeCf3RhjJ+XmcXOKm7y/tu+G+BXC8c=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIjGV-0003xy-TL for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 07:58:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1929E61909;
 Tue, 11 Nov 2025 07:58:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85862C4CEF7;
 Tue, 11 Nov 2025 07:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1762847880;
 bh=5Uaa5nwFjVAGS3f1mHP+LmUtuVFBDubmN+xdr/NpZiU=;
 h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
 b=Ch1k3nWPMj6UEosM8Ssp+W11+ShFdJNgTHl19OiSOLt8ohzsfcyx1e1F7RmTDjV4h
 6nfm81zuqwh2U/1g+oysD3nb8RJ03+yxk6skIyzw3M3W3e/J9HtiabAgh4+xEFmu37
 l5MKqXDSdixGL84XrPmyQATSqs91LuFiI1HHYTjBcRMgp9dE7vdCjaftzIMHr0cVLk
 +CWgU4tpn3OvWPaoyx3SvYKWIXApBzibkh3iBOdzwx5+bk+s2HOEUiW5d50gYtDEsM
 lw10x7RmKw7oaN9Q1I5bh42iwHcHv5ipPInJZkoHKozkZTco3mSCA83d6op32oom8H
 eoL8yv1NXmTAw==
Message-ID: <9f461bf7-3651-4be4-b6f9-20853cdc4c90@kernel.org>
Date: Tue, 11 Nov 2025 08:57:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
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
 <20251110184727.666591-14-andriy.shevchenko@linux.intel.com>
Content-Language: en-US, nl
In-Reply-To: <20251110184727.666591-14-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/11/2025 19:40,
 Andy Shevchenko wrote: > Use %ptSp instead
 of open coded variants to print content of > struct timespec64 in human
 readable
 format. > > Signed-off-by: Andy Shevchenko <andriy.shev [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vIjGV-0003xy-TL
X-Mailman-Approved-At: Tue, 11 Nov 2025 14:33:45 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 13/23] media: av7110: Switch to
 use %ptSp
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
From: Hans Verkuil via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Hans Verkuil <hverkuil+cisco@kernel.org>
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
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/11/2025 19:40, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Hans Verkuil <hverkuil+cisco@kernel.org>

Regards,

	Hans

> ---
>  drivers/staging/media/av7110/av7110.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/av7110/av7110.c b/drivers/staging/media/av7110/av7110.c
> index bc9a2a40afcb..602342d1174f 100644
> --- a/drivers/staging/media/av7110/av7110.c
> +++ b/drivers/staging/media/av7110/av7110.c
> @@ -321,7 +321,7 @@ static inline void print_time(char *s)
>  	struct timespec64 ts;
>  
>  	ktime_get_real_ts64(&ts);
> -	pr_info("%s(): %lld.%09ld\n", s, (s64)ts.tv_sec, ts.tv_nsec);
> +	pr_info("%s(): %ptSp\n", s, &ts);
>  #endif
>  }
>  



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
