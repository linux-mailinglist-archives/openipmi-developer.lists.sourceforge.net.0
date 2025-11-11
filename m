Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1078CC4EAA9
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 16:04:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AgW5bJMx8Vx6WLWYgk84X03kvy2tt04U95VjBkqVAnA=; b=l1EiKMkIpV/dZlxvWcqJkz+kO+
	irFTCL7vlifj4C9u9iaQv3U4/FYO3PulaDZ+1qLGNejgGa4X0gtw4LKkyITuBg2GxcDD8aavVEcAB
	7FFUpMvCRg30VltF+rDNacWzSDwltr574BYFlS8V/V8KPWf5KRhB6qkSQU+Xa+TYwFv0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIpul-00015W-6r;
	Tue, 11 Nov 2025 15:04:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pmladek@suse.com>) id 1vIpuj-00015L-NW
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 15:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=; b=BYAxBfR0l+OcDijzoJje/muB00
 GbmsJxnQpgkPf/SlR45p/yM+g+Ctpw3+AIalBRP2j3rskMc6MkzgcY3FXrV/ADDjfxbZicVVDybZ8
 MEbXUkeTYsyR3uagK7JZtoqCQ7p5mHDtZyauNfGG1oQfsPOPqNWWISD+TBYTp5g1Ll5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=; b=jTmRP/UiLnSYPT3PBsUMYatS7Y
 ryPlGfKuS6p7MjrY3r71wLgOZ+W69ekZlqYQBP8JiVLzt/YpZklI8YgS8nJKbRxNOxvys1kW0WzBV
 S83SOct/vcd0BxEqhU34T3+2dRIScf3Qh2j03FRs3rYoaoX/Zq/vC95RgoxTDC3oaTPo=;
Received: from mail-ej1-f42.google.com ([209.85.218.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vIpuj-00047w-72 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 15:04:09 +0000
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-b3c2db014easo774059666b.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 11 Nov 2025 07:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762873437; x=1763478237; darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=;
 b=NIhw/qihwAQvCbgd8hfu/cPraM/RuR9S3fRojVuoEBuNQDpjkHDjhk4wwNAkiC3E/G
 h6zn3ReP44yT+KN1LaDGQp8cvLx6Bvt9M3tou2R3k6aDaxD7fmgu4s7UhOpAhd0s54NP
 BPIvyLTC2Sw+cECjeH6W9Nj1CD/b09LYpaALpdOsAQEwoKPi/CfDqp1eivnbr2ReXYle
 BHKSmbuCuM1RCTYfsrVQNGTBCnG6s4MtAGSus3KbIWqGamC+dcheDrMcss1VdLCxzEz5
 iL9DwndedyRfnSBGXTl2kiz1d36+x2Jixjj32Hh6E0Oe31+N2mzkER8KioKDFzaJy4o1
 SxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762873438; x=1763478238;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wi+5dbYm5JIgaP/t7Nx547fFCD450JcmYNBqfgVm42E=;
 b=kV42o/P6oo7FUXaaYcl0rHxwdBwcvFJ7Aq6dI71DGEtmMjsfKupgCDws5I59EBev2r
 mNbHghSP2LtyK+ewwFYai1iW1XhMMulSFyXoMCn8Qj/TPsY8IWjR5ugD0swyewvZx1mT
 SxBnF1+jqSLZK0C0uKJ/BEg0g3xVeDa0xknTxfF7xttPvXAO1jJjewBZKIFmhStHlLft
 cnlByhd4sxKBVBLObmIXiC0gYF6Z/puKPb+Ck+UNXANDmxMgNbDnpjib9ZA/xcFMPGeO
 sAgIJFPTj63+wtJnnX6FSXma+8TchD+Ke9Ebd7l8jPpmFzXKyQXBwvdl8qtkQxrz3BRj
 fAGA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW34TDpFLKsLEliArmymbGqVRVfQdsvW99/FnRqT7rwp1NUkZcXDMizFgxZ/QNn3JYtUUwAMmUVNOaMKmnJFyVwcT4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwFoEZUvTQMDjMP1O7QAZhB6ljE1462MhEeQ6RCm2m1ezgOpbHU
 4ZsiXwiNNkEKkzJPM0PA4Wi7ry5W/jjp+wj/gK8RBk62thStXORok19zZ/MOoO38hgw=
X-Gm-Gg: ASbGncvBDwd0eJpYHu+3GEZem7GinBJRkp+nl+h/KlIwoRZm7Qw6BzvGklDBFiZcQ9T
 RsIYfgJrK5ME21XtLt3C5dgbQyLN4cUyL/CVEk38zm2K6iYVPT+tB1FM1riZFT86qY3Ouu0ROi4
 6BtYmFijCV3m8OuKlAtNFfppvZeHxOB4fZrVKnQMtgU98Lt1ufhPnWCUr82Lc97hl2llySeBhHG
 3f35iTqJjV6ARXDiOIZ+xqeap06Xt+oPJmg2LyoJIIu0CfTD/dPZe6oT2cx9Uaua9tvV3MiGtTA
 W9d7obIvmU75xgDwXNrlWMmMk0NCJectwzbRbkxDAkiPNqU7rcgMdBk9xh+87EepyakeSLxzPeE
 Y60dUM4hY9aYoTbu9irxVLEKzT9oBK8C8H8KS1ObdgqDyZ2JAW59hAzaAzXklPGbEGEWKmzW8s4
 8lOjb7xwXLTb8L6U7erQ==
X-Google-Smtp-Source: AGHT+IGWUxoIalLG5xLZllX+zCkekRXIo7e3xykwl2APS2wZQPGHNLqastwX+dw6XlJnfwm9Fe+bGg==
X-Received: by 2002:a17:906:f590:b0:b71:cec2:d54 with SMTP id
 a640c23a62f3a-b72e04e4ebemr1306841566b.57.1762873437355; 
 Tue, 11 Nov 2025 07:03:57 -0800 (PST)
Received: from pathway (nat2.prg.suse.com. [195.250.132.146])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b72bdbc9656sm1374243166b.7.2025.11.11.07.03.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Nov 2025 07:03:56 -0800 (PST)
Date: Tue, 11 Nov 2025 16:03:53 +0100
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <aRNQWc8O2y94zoj8@pathway>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
 <20251111122735.880607-2-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111122735.880607-2-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 2025-11-11 13:20:01,
 Andy Shevchenko wrote: > A handful
 drivers want to print a content of the struct timespec64 > in a format of
 %lld:%09ld. In order to make their lives easier, add > the resp [...] 
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vIpuj-00047w-72
Subject: Re: [Openipmi-developer] [PATCH v2 01/21] lib/vsprintf: Add
 specifier for printing struct timespec64
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

On Tue 2025-11-11 13:20:01, Andy Shevchenko wrote:
> A handful drivers want to print a content of the struct timespec64
> in a format of %lld:%09ld. In order to make their lives easier, add
> the respecting specifier directly to the printf() implementation.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  Documentation/core-api/printk-formats.rst | 11 ++++++++--
>  lib/tests/printf_kunit.c                  |  4 ++++
>  lib/vsprintf.c                            | 25 +++++++++++++++++++++++
>  3 files changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
> index 7f2f11b48286..c0b1b6089307 100644
> --- a/Documentation/core-api/printk-formats.rst
> +++ b/Documentation/core-api/printk-formats.rst
> @@ -547,11 +547,13 @@ Time and date
>  	%pt[RT]s		YYYY-mm-dd HH:MM:SS
>  	%pt[RT]d		YYYY-mm-dd
>  	%pt[RT]t		HH:MM:SS
> -	%pt[RT][dt][r][s]
> +	%ptSp			<seconds>.<nanoseconds>

I know that that there was no good choice. But I am curious.
Does the 'p' stands for some particular word, for example, "plain" ?

I do not want to start bike shedding but I think about
using 'n' as "number".

> +	%pt[RST][dt][r][s]
>  
>  For printing date and time as represented by::
>  
> -	R  struct rtc_time structure
> +	R  content of struct rtc_time
> +	S  content of struct timespec64
>  	T  time64_t type
>  
>  in human readable format.
> @@ -563,6 +565,11 @@ The %pt[RT]s (space) will override ISO 8601 separator by using ' ' (space)
>  instead of 'T' (Capital T) between date and time. It won't have any effect
>  when date or time is omitted.
>  
> +The %ptSp is equivalent to %lld.%09ld for the content of the struct timespec64.
> +When the other specifiers are given, it becomes the respective equivalent of
> +%ptT[dt][r][s].%09ld. In other words, the seconds are being printed in
> +the human readable format followed by a dot and nanoseconds.
> +
>  Passed by reference.
>  
>  struct clk
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 3f99834fd788..fdd06e8957a3 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -2464,6 +2488,7 @@ early_param("no_hash_pointers", no_hash_pointers_enable);
>   * - 'g' For block_device name (gendisk + partition number)
>   * - 't[RT][dt][r][s]' For time and date as represented by:

We should add 'S' here as well:

   * - 't[RST][dt][r][s]' For time and date as represented by:

That said, I am not sure about the optional '[p]'. We could
either do:

   * - 't[RST][p][dt][r][s]' For time and date as represented by:

or

   * - 'tSp'	For time represented by struct timespec64 printed
		as seconds.nanoseconds
   * - 't[RST][dt][r][s]' For time and date as represented by:

>   *      R    struct rtc_time
> + *      S    struct timespec64
>   *      T    time64_t
>   * - 'C' For a clock, it prints the name (Common Clock Framework) or address
>   *       (legacy clock framework) of the clock

Otherwise, it looks good.

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
