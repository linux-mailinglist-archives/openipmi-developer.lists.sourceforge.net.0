Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7403261DADF
	for <lists+openipmi-developer@lfdr.de>; Sat,  5 Nov 2022 15:18:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1orK0E-00058s-Ro;
	Sat, 05 Nov 2022 14:18:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1orK0A-00058f-Ck;
 Sat, 05 Nov 2022 14:18:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PYhR6hYWBdnOcbKjn7H8NpQf1Qg9j5JtEEKHrz9oi/g=; b=CyhKnvGuzCM8kQKOzoEqHiYMiZ
 tMtRp8SAydEusrjkoyqAVxRdRIa8i66yOWTHErZ+HoSdQSttIgJJJvCa3nWSuG4iDEY7odQHruhjI
 yUJD+4ptNbYbVhAPKsty6Zyf6muAmpj13RSJu/OqZZmwpCreFJVYtO1qr+0W0mPNHukc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PYhR6hYWBdnOcbKjn7H8NpQf1Qg9j5JtEEKHrz9oi/g=; b=mp5zIjISaBgYFy+qynr4PgCMmu
 Ub2il+fIMLcFLBhacaV4s6KLX4neEnjGI2R00LAQNq/LwjciEpJ0U9/0N58UtVZVE0vi5fF2NLyuO
 8w1ad/X9f12xYg4fMAlirGA7e0Qxe9/BqgRW+5EMsNNjYhzE2WpaH71xtHj/+BXasgTg=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1orK09-0006VR-Mw; Sat, 05 Nov 2022 14:18:26 +0000
Received: by mail-oi1-f172.google.com with SMTP id c129so8006012oia.0;
 Sat, 05 Nov 2022 07:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=PYhR6hYWBdnOcbKjn7H8NpQf1Qg9j5JtEEKHrz9oi/g=;
 b=cEC5IT1XpqlAK68Dgo5+fxnDFCjVpzY0DRagRqxTDry42i1dK2tcbNHYd7Ayss+LTR
 Zq5Ih2v2443bsxwUvCZI2AevutQelDkhHOJqQhhh90RAdGwH1ztuIkNBULvbO0OWUDyB
 Zs3Rt+XqCTKE2Cs9eS/ndyLispMby6sUmCV9hIPpDCZ1JKOuE8AnRRE6npVgjTBnltto
 YYH4ZircOfT5HS0GEZGZOnxYVDveuMG1fd0QtTxHxYW8Huxn/roqBK+JFSqL6Tdp87g+
 GSZROE0361WHir4UDtfX6jA945ccs7fZ7mz9TOtoNTCBa80eZ2tSlHY0p6xlLXtkRQTo
 pyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PYhR6hYWBdnOcbKjn7H8NpQf1Qg9j5JtEEKHrz9oi/g=;
 b=jV/i2LDFKVDFBPXAq4tJbqzNUJCwqvB7smEuPEyTtg3oWvIAPfzbZjE9UUQn1KucE3
 3mQESD7QrdIpFx4DaTp1jQP52IvFjjlZlxD9U0WCm2PxybSMoE6EHRbVRgGryvsoOd4E
 hAkx7LqVPVkTL+KGq3jiXxRIaefKDZ3F3bIZei10lKjzjF1YyzfOI61d7Xr5iiX+DXno
 GC50mGLsVsmRbEmmEtNpvjV8dg/nmUhjuf7e6IeqQ/htvkD+lWr5ny+DcwlXYmp8lO12
 QtozSgNKiF9/AGH0i0swu2HT0CipfqmUDvumGG9nIQli5+KcYLFp7mdyJ5bWjayZPlz5
 q1Og==
X-Gm-Message-State: ACrzQf2ZzpwaZGQCXTdN8tP5oxfw6rW5ghTRYQ45sdDsVm86I61z9ODU
 ++PCtBAQbp2jfYlmKK3qloI=
X-Google-Smtp-Source: AMsMyM5In/UjkQAOQkguZQ2rHL63I8msSs9c6an0J/9gKdjSX2hezT8PwL34Y+85tQUi0BEYyplo0Q==
X-Received: by 2002:a05:6808:2104:b0:35a:5e9:a411 with SMTP id
 r4-20020a056808210400b0035a05e9a411mr18764923oiw.168.1667657900081; 
 Sat, 05 Nov 2022 07:18:20 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 e1-20020a056870c0c100b00132741e966asm830469oad.51.2022.11.05.07.18.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Nov 2022 07:18:19 -0700 (PDT)
Date: Sat, 5 Nov 2022 07:18:17 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221105141817.GF1606271@roeck-us.net>
References: <20221105060024.598488967@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221105060024.598488967@goodmis.org>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 05, 2022 at 02:00:24AM -0400,
 Steven Rostedt wrote:
 > > Back in April, I posted an RFC patch set to help mitigate a common issue
 > where a timer gets armed just before it is freed, and whe [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1orK09-0006VR-Mw
Subject: Re: [Openipmi-developer] [PATCH v4a 00/38] timers: Use
 timer_shutdown*() before freeing timers
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org,
 cgroups@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Nov 05, 2022 at 02:00:24AM -0400, Steven Rostedt wrote:
> 
> Back in April, I posted an RFC patch set to help mitigate a common issue
> where a timer gets armed just before it is freed, and when the timer
> goes off, it crashes in the timer code without any evidence of who the
> culprit was. I got side tracked and never finished up on that patch set.
> Since this type of crash is still our #1 crash we are seeing in the field,
> it has become a priority again to finish it.
> 
> The last version of that patch set is here:
> 
>   https://lore.kernel.org/all/20221104054053.431922658@goodmis.org/
> 
> I'm calling this version 4a as it only has obvious changes were the timer that
> is being shutdown is in the same function where it will be freed or released,
> as this series should be "safe" for adding. I'll be calling the other patches
> 4b for the next merge window.
> 

Just in case you didn't notice:

Looking through the resulting code, I think some of the remaining
calls to del_singleshot_timer_sync() can be converted as well.

The calls in drivers/staging/wlan-ng/prism2usb.c:prism2sta_disconnect_usb()
are obvious (the containing data structure is freed in the same function).
For drivers/char/tpm/tpm-dev-common.c:tpm_common_release(), the containing
data structure is freed in the calling code.

Thanks,
Guenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
