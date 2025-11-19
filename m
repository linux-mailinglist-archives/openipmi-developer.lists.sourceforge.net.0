Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B056C6DE4D
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Nov 2025 11:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j9Fw/f1JLi3CFABCG0UOqPVQ1lOfSrjMPV01FjrlZz8=; b=ICgLm1nGbBH10wGz2bhlEQplAk
	FYMUl6WPjMWMq2vFLrSMYRFl+8syQaW1yyIdCvSG7pXARtw0XLm0qE5/tfVO2mqzf8kO4FlScs6UV
	NYxEGK8OlDIicRM0y6Zvds6RKwdllOab8My9Cj//fZx8G6QRV+iknCq0RQMMsD9wVrvc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vLf81-0000xK-Qq;
	Wed, 19 Nov 2025 10:09:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pmladek@suse.com>) id 1vLf7y-0000xC-TS
 for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 10:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=; b=ToLgXiyiUBx0KBvKSWAnrppv4u
 dP+P6LzZ50//IlDUltgzygjmfAYS/FNRoo+CuptMLyCfGpqeGlFuwK+DZIebAHLi2RgxE6hxxz17/
 naj+/dF8XYWy9YMG8faJ1sGWVxCzINiLuWqi13qlp58d9wn/5naeAnz25gKzEpEkMLPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=; b=JrdyXLwivEcSiyEqy+EvwWOPyE
 Yj/WluwMuHbN4AlyuJ0IGOZFZtRHwShOUIchQ/hQh75kbxuBvHQ/DjqnxBEEafQMwZ+jlPaP5aSay
 h38QrBRgYxl6v6ov0V7NwXpS4HH41N+rAMjUKu5gM4PWjlns7zDHkCcMv6Fabpz+ZJ6M=;
Received: from mail-ej1-f44.google.com ([209.85.218.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vLf7y-0002ar-BA for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 10:09:30 +0000
Received: by mail-ej1-f44.google.com with SMTP id
 a640c23a62f3a-b735ce67d1dso851790066b.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 Nov 2025 02:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1763546963; x=1764151763; darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=;
 b=e9p5RIwTMVrklwcFjXLY9uq0acRm0n/2BGUOpCKY2XshOirOVoHZt06rQiGw7wteRX
 3GaQ+Vahp88ivPFxQVPynzrekwrbmwbVC5oMOgdbjaVbW4hILKS8w03LrzfXEvuWDYBs
 Syj7ZNvldxfBFHBjtle7V6ZtMrPymEO7N2Fg3DfzOo9lsvf7W2rtO3quAbZVIJzasi5B
 HlDrFsct++g6Ow/X7Icl81THy1hjqRQ8p4kPsBOGIrfBT4xocDP7DE6arrfa/BzDTxck
 DsVDWali6SMGgVz0z2fKeZyp4mZ9BENWG0xVx9WjwjEdliAI6p4aZ3nbjJBh//8ByGt0
 kL7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763546963; x=1764151763;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mZmwnZeJsVmH4Emd6Sk7OTkRxBmCW6aXF7g1I/Zjods=;
 b=WZTnbpqBzrCYn1H8v5BYohK1mmpL3rUoyOK3ExVn1UC9itXIVUZuYgUmg1x+q63zyE
 P0j1ekma2BcyuZzWV+Wqztf/PlkoVYzEtbhEqCc8O5wpra18mjpLYv/4pzYyWokK1j1K
 ecf0IpVrFiZ7bsBOFA1WgfeudmDP1E2D+TCsjQGfhyBmVL50/zi/qkBjkwyVhFHUFbCw
 9cIpGOFkfgdbR9eTSPElMNeXDlwygPgSjRQee4C87jLCFkEryYHOyZe4jIea4rgaMJwY
 V3zXVEJKxox+nvlvD4ZWgKM6YRxhGHPZi1ADUjRik00+QQoYsWskOafwNRC9gqzRpN01
 uz0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXF0E0q7bSZt0xmp79xkqWP0gebzzCIDlNDCcP1PuvTPmN1QbRCrvTPtJGJR0wIHB0K3r1JBRIhxjs1e5wiV9qt1Bo=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzoFWF69By9biu9iGdcXeenDcUEL6qak3ZbEBosrPyuToAPQULB
 CGJAfmmRX6mWCTUFU1yv4h7lttExGEjcYzP9ePHeC60bB/OY4emmiV+yKZEPRvzk+6g=
X-Gm-Gg: ASbGncuR2bOTaYH4bbGIjylhRRZ1CLOuvgMjes6tjBoU7lgY04ku4xQkAzC8RZAF58B
 dVQOVMYSjcKIz5nz1kbXMk1zfM4FtYhEDHqsT98+KLQPVjbcAfLI2HtnXhaFwiv9BukwQu6W4bz
 JKorpYoYQaSTMnXnE2cmQEk1lE4tfvBQM8zEFJY3sAeb3Q8L6hONGFa+pG0JpTnf8CvGF98epxt
 4JWYMsRZmNjQJTaAQ+Ea51UGq6E13iN2DHGH6qUlS/e8b6szqD1i5oRXpJ1gJra3ZzmO83ZkR0C
 Q0MiVjBX6OnUe49rz+7aoemsi4R2d5NNumLERUSyHmPkJ7PcvT34IOpsWaN8VvvkMfPNWxtraQY
 dd4g2uLrpgyksU6QnRehfVMZY2uprsSSOlnt44vRJmfzEPNr8BVIuesADEaLCMi//bZjTkDr/L1
 PbBeRdstaZow+JOCZ21FiyldRu
X-Google-Smtp-Source: AGHT+IHL60A5nBupA1OyvdeZdvK8rVJqcdAj2UJ8GMSSqilZDEkvpcYDaNSL65+yyn9lVOsemK499g==
X-Received: by 2002:a17:907:1c81:b0:b72:d2df:641c with SMTP id
 a640c23a62f3a-b736795d498mr2006941666b.49.1763546963352; 
 Wed, 19 Nov 2025 02:09:23 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.130])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b734fda8bc8sm1594056066b.49.2025.11.19.02.09.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Nov 2025 02:09:22 -0800 (PST)
Date: Wed, 19 Nov 2025 11:08:01 +0100
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <aR2XAYWTEgMZu_Mx@pathway.suse.cz>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 2025-11-13 15:32:33,
 Andy Shevchenko wrote: > Use %ptSp
 instead of open coded variants to print content of > struct timespec64 in
 human readable format. I was about to commit the changes into printk/linux.git
 and found a mistake during the final double check, see below. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.44 listed in wl.mailspike.net]
X-Headers-End: 1vLf7y-0002ar-BA
Subject: Re: [Openipmi-developer] [PATCH v3 19/21] scsi: fnic: Switch to use
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
From: Petr Mladek via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Petr Mladek <pmladek@suse.com>
Cc: Andrew Lunn <andrew@lunn.ch>, dri-devel@lists.freedesktop.org,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>, Stefan Haberland <sth@linux.ibm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Sven Schnelle <svens@linux.ibm.com>, Alex Deucher <alexander.deucher@amd.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 freedreno@lists.freedesktop.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 linux-doc@vger.kernel.org, Gustavo Padovan <gustavo@padovan.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simona Vetter <simona@ffwll.ch>, linux-s390@vger.kernel.org,
 Calvin Owens <calvin@wbinvd.org>, Richard Cochran <richardcochran@gmail.com>,
 linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Satish Kharat <satishkh@cisco.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, Casey Schaufler <casey@schaufler-ca.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-trace-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Karan Tilak Kumar <kartilak@cisco.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Corey Minyard <corey@minyard.net>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rodolfo Giometti <giometti@enneenne.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 Sesidhar Baddela <sebaddel@cisco.com>, Sagi Maimon <maimon.sagi@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Niklas Cassel <cassel@kernel.org>,
 David Airlie <airlied@gmail.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Xiubo Li <xiubli@redhat.com>,
 intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Jessica Zhang <jesszhan0024@gmail.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu 2025-11-13 15:32:33, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.

I was about to commit the changes into printk/linux.git and
found a mistake during the final double check, see below.

> diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
> index cdc6b12b1ec2..0a849a195a8e 100644
> --- a/drivers/scsi/fnic/fnic_trace.c
> +++ b/drivers/scsi/fnic/fnic_trace.c
> @@ -215,30 +213,26 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  {
>  	int len = 0;
>  	int buf_size = debug->buf_size;
> -	struct timespec64 val1, val2;
> +	struct timespec64 val, val1, val2;
>  	int i = 0;
>  
> -	ktime_get_real_ts64(&val1);
> +	ktime_get_real_ts64(&val);
>  	len = scnprintf(debug->debug_buffer + len, buf_size - len,
>  		"------------------------------------------\n"
>  		 "\t\tTime\n"
>  		"------------------------------------------\n");
>  
> +	val1 = timespec64_sub(val, stats->stats_timestamps.last_reset_time);
> +	val2 = timespec64_sub(val, stats->stats_timestamps.last_read_time);
>  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> -		"Current time :          [%lld:%ld]\n"
> -		"Last stats reset time:  [%lld:%09ld]\n"
> -		"Last stats read time:   [%lld:%ld]\n"
> -		"delta since last reset: [%lld:%ld]\n"
> -		"delta since last read:  [%lld:%ld]\n",
> -	(s64)val1.tv_sec, val1.tv_nsec,
> -	(s64)stats->stats_timestamps.last_reset_time.tv_sec,
> -	stats->stats_timestamps.last_reset_time.tv_nsec,
> -	(s64)stats->stats_timestamps.last_read_time.tv_sec,
> -	stats->stats_timestamps.last_read_time.tv_nsec,
> -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_sec,
> -	timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_nsec,
> -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_sec,
> -	timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_nsec);
> +			 "Current time :          [%ptSp]\n"
> +			 "Last stats reset time:  [%ptSp]\n"
> +			 "Last stats read time:   [%ptSp]\n"
> +			 "delta since last reset: [%ptSp]\n"
> +			 "delta since last read:  [%ptSp]\n",

Both delta times are printed at the end.

> +			 &val,
> +			 &stats->stats_timestamps.last_reset_time, &val1,
> +			 &stats->stats_timestamps.last_read_time, &val2);

I think that this should be:

			 &stats->stats_timestamps.last_reset_time,
			 &stats->stats_timestamps.last_read_time,
			 &val1, &val2);

>  	stats->stats_timestamps.last_read_time = val1;

The original code stored the current time in "val1". This should be:

	stats->stats_timestamps.last_read_time = val;

> @@ -416,8 +410,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  	jiffies_to_timespec64(stats->misc_stats.last_ack_time, &val2);

Just for record. Another values are stored into @val1 and @val2 at
this point.

>  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> -		  "Last ISR time: %llu (%8llu.%09lu)\n"
> -		  "Last ACK time: %llu (%8llu.%09lu)\n"
> +		  "Last ISR time: %llu (%ptSp)\n"
> +		  "Last ACK time: %llu (%ptSp)\n"
>  		  "Max ISR jiffies: %llu\n"
>  		  "Max ISR time (ms) (0 denotes < 1 ms): %llu\n"
>  		  "Corr. work done: %llu\n"
> @@ -437,10 +431,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
>  		  "Number of rport not ready: %lld\n"
>  		 "Number of receive frame errors: %lld\n"
>  		 "Port speed (in Mbps): %lld\n",
> -		  (u64)stats->misc_stats.last_isr_time,
> -		  (s64)val1.tv_sec, val1.tv_nsec,
> -		  (u64)stats->misc_stats.last_ack_time,
> -		  (s64)val2.tv_sec, val2.tv_nsec,
> +		  (u64)stats->misc_stats.last_isr_time, &val1,
> +		  (u64)stats->misc_stats.last_ack_time, &val2,

So, this is correct!

>  		  (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
>  		  (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
>  		  (u64)atomic64_read(&stats->misc_stats.corr_work_done),


Now, I think that there is no need to resend the entire huge patchset.

I could either fix this when comitting or commit the rest and
you could send only this patch for review.

Best Regards,
Petr

PS: All other patches look good. Well, nobody acked 7th patch yet.
    But I think that the change is pretty straightforward and
    we could do it even without an ack.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
