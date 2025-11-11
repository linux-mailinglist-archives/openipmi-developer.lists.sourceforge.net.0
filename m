Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B79C4AC88
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 02:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZKDugNsO50zpKbWlUoWwdSUvCIjv5jCcaKEzh5N9HI0=; b=SjIBoquUJSls96Z4qG5nATPhdL
	ZbJpfi76jAsYyxZcgF9VpLOcEhrx67lrDh6ZIPOH6kzeu/A8z3f8AOxfE4z9pYJsraBLrRnhd2Z1A
	tJgk4SK7OEonwmOb67SDJQ39SVUbc1mHow6+Zj2O9QePuVlQwmxJmGxC6mgdTROsfdtg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIdOE-0001f4-Oi;
	Tue, 11 Nov 2025 01:41:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vIdOD-0001ev-HO
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 01:41:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IjPKo3ybe4fdml1XQE+jQ3G55BcDMlVXlR9cl8yZWH4=; b=NxexrP0zdsKrSBQec1iGbHwLIw
 P6nfivGs1qOPirJRHeb+srnE0ixmZJpQseOH1oDG8g2i7SydonuPhbNrb1r0BLgoz0kS9h5jYyAdN
 mR7nDv04iqCInUxyPo/lukdnqog84cyhKV1nVusfNtiavnEpWNtuVYX25IkJLYbMW6XQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IjPKo3ybe4fdml1XQE+jQ3G55BcDMlVXlR9cl8yZWH4=; b=Bd6TLsMnrcxeX4K/vnm5ADcDEN
 cfAVxidE0wuRd0YKRFNokjwLEBnaVmlQBZ/PXgnyve/j92fV2Afel/+ysHMAuym6/zGZOX6HZgndJ
 MEcyJ0RodMuHji8JRFR0hmY/hYkv8JeJ8JuHLCRbBc/IK6UxAJDBBDGT+bT+iC71tUQA=;
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vIdOD-0004bd-40 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 01:41:45 +0000
Received: by mail-qt1-f196.google.com with SMTP id
 d75a77b69052e-4edade7d5baso4314871cf.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 10 Nov 2025 17:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1762825294; x=1763430094;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IjPKo3ybe4fdml1XQE+jQ3G55BcDMlVXlR9cl8yZWH4=;
 b=3EAzMCoy43UbVxtifuJWctcia3qMl+YLZOWNs+/CWNNsZ9bFEENausk3D5DTj6BWFS
 Nse6CFzg3uk3vfHh4QJHzYwnnrQ3dOc+7Bu9EkZoI5oG98ie1JPTleEixPL3exoKFGgx
 XPRsUu3wIwdjF9fC5y2lo5cRNCUVUjzLd8pNPGmBracXaYZlyZ1NMHDtFZ1FXncayUFA
 L/xn9BoG7Isv3uALT3M5Qy0NtlzsgIVKt6MmtwqR3tjBRH/zfFs6bHlrAJWJRz4MWlpb
 YPsvjGG3xnzTu1pAsW/cY5iChcGmB7ONRikr9W6urqSPpGqP5DfE4S7ZpFhfSCP2gLFf
 9CmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762825294; x=1763430094;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=IjPKo3ybe4fdml1XQE+jQ3G55BcDMlVXlR9cl8yZWH4=;
 b=qvC/RSImFeZUlMmW7S+Onx3TTFW/IB46iSgmXgqUbR6kWVVp9vSk1QxPa7BZXN/tkd
 0MmE9F0GS7XZQTOFHIBZxxyAjMmoinK/Q9tK0uL75oq8xG8rP3ggLtuTRIWX5LTLVrOu
 ExNGXzVkOYc1yqSXaQrqJwTP+GdvcZmvAufR8wQegH9WVKvbQ9a367YL3C8s2YUS3mJc
 Uk0hDBA8dt5UXvQHwJeomEB+WD0owKdYz+0mzKZM9iN54EkBEzslCex2LuHLs1NBLJWu
 /TrKNqv7kEA/XUddoajjJKoudjnVsB9ZLK+8VCQTA5BBvGaJPu5tOVn0kNf5vfneK19G
 h6Eg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDbTxxa0W718/ipKFqpebVZFmf4MjXk5pHw9+HnrJ0StqK/tP+CMheSbOV6Us2oz2f8HC9jV2b8rPtQT+yK2uwvb8=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwX+8O77VbTGgO2QnlFLrCQmtyEzKO+0VTx7ME2fWIPZw2+wQ8c
 TaIuwUSJJOK0LoohfAkwiOEEGstD+tZoOFaTAoK6kFlfnjda5W6mZYaHnuKRYSPsw+Bi3AxTaqd
 KxBEl
X-Gm-Gg: ASbGncuUcfiHlUMddE8bQB0tqdwTEJ+rAgwBMHZ2fZwBx8FiGikQgwld2imjTT1EoPN
 KHohgGI0Z8RejJjoN5Gyti6wdl4MyRiOItBXGIPzTYLEdkLzhI0rXvQzSCioOQpX8cVZrmoFD1s
 D9/jtlNUCoVBwxXigA0CklIdRgJLjVtpjUXT8v6NIRmkXkUNiVflQfapmoftStVKKOgBMzD76FN
 LEbVQYF3eEmarBVFSJRfaL80UB5Xpgfor4N063HkMWV6ductEFv/8n92JcocsjPnSdqDmtAbHLc
 yTQHd9r5bBiYBrafrJSzwoAxQxTsNg+9ejFpnIoy4I3EDKkvIKIENNkczUmWqWYJuGQdsG1Tc08
 AHgH9OMyIAZz4GCRSZZLw1LIVEuMN5EdQDmv8psQ6LwVo1wzxFUuxH/dxiYip34X19HRCgnUuC6
 7KWaeyyZxyH5dJjA==
X-Google-Smtp-Source: AGHT+IHYqlJ/DqUior2uObKb688W9mKskJnwhdBfDC1sLOPoqWKjn2HRpxRv5pN7HFxTPVj3Axvofg==
X-Received: by 2002:a05:6870:46a8:b0:3e1:d34:4283 with SMTP id
 586e51a60fabf-3e815aaa2a3mr850172fac.19.1762823862970; 
 Mon, 10 Nov 2025 17:17:42 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b4e9:19a3:cdaf:7174])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3e7d6f7a27dsm4076840fac.0.2025.11.10.17.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Nov 2025 17:17:41 -0800 (PST)
Date: Mon, 10 Nov 2025 19:17:35 -0600
From: Corey Minyard <corey@minyard.net>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <aRKOr2hyoqTnh85-@mail.minyard.net>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 10, 2025 at 07:40:31PM +0100, Andy Shevchenko
 wrote: > Use %ptSp instead of open coded variants to print content of > struct
 timespec64 in human readable format. > > Signed-off-by: Andy Sh [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vIdOD-0004bd-40
Subject: Re: [Openipmi-developer] [PATCH v1 12/23] ipmi: Switch to use %ptSp
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
Reply-To: corey@minyard.net
Cc: Andrew Lunn <andrew@lunn.ch>, Takashi Iwai <tiwai@suse.de>,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Krzysztof Wilczy??ski <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-sound@vger.kernel.org, Stefan Haberland <sth@linux.ibm.com>,
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
 Christian K??nig <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-trace-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Karan Tilak Kumar <kartilak@cisco.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rodolfo Giometti <giometti@enneenne.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 Sesidhar Baddela <sebaddel@cisco.com>, Sagi Maimon <maimon.sagi@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Niklas Cassel <cassel@kernel.org>,
 David Airlie <airlied@gmail.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-scsi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Thomas Hellstr??m <thomas.hellstrom@linux.intel.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>,
 Xiubo Li <xiubli@redhat.com>, intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 10, 2025 at 07:40:31PM +0100, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Quite a bit neater, yes.

Acked-by: Corey Minyard <cminyard@mvista.com>

> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 3 +--
>  drivers/char/ipmi/ipmi_ssif.c    | 6 ++----
>  2 files changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 70e55f5ff85e..5459ffdde8dc 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -275,8 +275,7 @@ void debug_timestamp(struct smi_info *smi_info, char *msg)
>  	struct timespec64 t;
>  
>  	ktime_get_ts64(&t);
> -	dev_dbg(smi_info->io.dev, "**%s: %lld.%9.9ld\n",
> -		msg, t.tv_sec, t.tv_nsec);
> +	dev_dbg(smi_info->io.dev, "**%s: %ptSp\n", msg, &t);
>  }
>  #else
>  #define debug_timestamp(smi_info, x)
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 1b63f7d2fcda..ef1582a029f4 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1083,10 +1083,8 @@ static int sender(void *send_info, struct ipmi_smi_msg *msg)
>  		struct timespec64 t;
>  
>  		ktime_get_real_ts64(&t);
> -		dev_dbg(&ssif_info->client->dev,
> -			"**Enqueue %02x %02x: %lld.%6.6ld\n",
> -			msg->data[0], msg->data[1],
> -			(long long)t.tv_sec, (long)t.tv_nsec / NSEC_PER_USEC);
> +		dev_dbg(&ssif_info->client->dev, "**Enqueue %02x %02x: %ptSp\n",
> +			msg->data[0], msg->data[1], &t);
>  	}
>  	return IPMI_CC_NO_ERROR;
>  }
> -- 
> 2.50.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
