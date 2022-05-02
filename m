Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC125172E2
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 May 2022 17:38:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nlY8S-0003LC-1O; Mon, 02 May 2022 15:38:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <f.fainelli@gmail.com>) id 1nlY8Q-0003L2-PC
 for openipmi-developer@lists.sourceforge.net; Mon, 02 May 2022 15:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xdAYU3mu3q5iKW/q53x7SG0PmMFu/IJ99F9X+I1LBFA=; b=ZgycqfJjRudvw84qsQjDxfYIVv
 abbhBZayXTJGp/WjHXSiZtOxGxxGEo2y2CeDHuLTF5/GhByhScJ25lH244t+T0FTSPl3f8oCymN2V
 xbn9vjT4Hr8bw7XGxeuqfhhP8hixqpGHV98kcPuHb8Rj4Wun+PVTAGrEzllmXEA2eIA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xdAYU3mu3q5iKW/q53x7SG0PmMFu/IJ99F9X+I1LBFA=; b=Z1HtAieuc+b14TF0XljG5UC+4A
 XUkiW7qS3nDf8Dt6AFH0htxSpNdTUXHxB06MqChChVTWJ9HSnMxzs5K8QWDB7RkN+MXQTCa29/5AN
 cjTdX4JmIZ2XeWjxoEn+ERXVygrLy5rP6XT9vjbMq+/zir/+3Lsb70zHOxxn4dzFCY7A=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nlY8O-00GfvH-Hs
 for openipmi-developer@lists.sourceforge.net; Mon, 02 May 2022 15:38:48 +0000
Received: by mail-pg1-f178.google.com with SMTP id 6so328935pgb.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 02 May 2022 08:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=xdAYU3mu3q5iKW/q53x7SG0PmMFu/IJ99F9X+I1LBFA=;
 b=n+sdzeWg2S/gnK+vDOIvL6IUbN3m/ZsZjzFb11eZoR9Ocah7YJVO2WiV41qchObcfb
 DQoBAV7ZWycdznoAT+bkWgo/wu+1wDV1bIUkSxqup4K24uuli3THOxTxyw5X5d53wgme
 WcsN0rdXUDiQCbaE2BiYM+YRj9TzgmIUMpvqiw3DgUAYB77r1iQIEojYxiA62BjPH8RM
 iKwEObMzsKXIe5T1OWURADziMPdtdHkUN1OxLhRHsrdiQj28siLmQYHweNGUt6WE2RWU
 4RoD4QWsGkku1xASAbiwviIYb1qjscuQqHCmPnV7Xwb2MQ5+T3WoFFqH/wvbUUW3/9i6
 dZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=xdAYU3mu3q5iKW/q53x7SG0PmMFu/IJ99F9X+I1LBFA=;
 b=njClxGxwov8plkvWc/z3sXL4uTPwgLSeL5lKcP7aTykSkQFkWhTvwbojjn3naWR9w+
 BZ5RtGCPJT34Pf8NsOtT1sTRF7+ORF2szVYM/gdIqkaLy5b6GdFrvZCg33QcGzJ6IBZO
 qIlccJ4DDMkBNtXw77X5+9IqKpipUoHl5aHO1MQ2joA9rmjS7Mvk7IKFElRFTYVw9lIO
 3UNggwu/R2CHSA1NjwqMkPGU/J61KM5POrzJiOznc5bVpwzHXuBXtHeVNRMomaxRgdNo
 W5Ase+5pE75//KI9/IuZokJkfEDxX7JAZKCBiSpG1rndZuw2Y5/T4jnmO3MySfyUfDjO
 D8Gg==
X-Gm-Message-State: AOAM533SVzofUb0Tml16G+XQQapcm04oqTHiT9O1HuYgS0bEFauppwP6
 0aVHn+Bv54V/v6xvUbn2iAM=
X-Google-Smtp-Source: ABdhPJyFyZFQ5alP4D0nGrJsTy5roBCXXaX5AecPC5DucA/TU9ZDaKugYKQuLpePce1AAM16r6umMQ==
X-Received: by 2002:a05:6a00:846:b0:50d:f02f:bb46 with SMTP id
 q6-20020a056a00084600b0050df02fbb46mr4382838pfk.74.1651505921477; 
 Mon, 02 May 2022 08:38:41 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id
 j11-20020aa7800b000000b0050dc76281basm5027174pfi.148.2022.05.02.08.38.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 May 2022 08:38:40 -0700 (PDT)
Message-ID: <a02821ab-db4f-5bff-2a98-7d74032a0652@gmail.com>
Date: Mon, 2 May 2022 08:38:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-7-gpiccoli@igalia.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220427224924.592546-7-gpiccoli@igalia.com>
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/27/2022 3:49 PM, Guilherme G. Piccoli wrote: > The panic
 notifier of this driver is very simple code-wise, just a memory > write to
 a special position with some numeric code. But this is not clea [...] 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.178 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nlY8O-00GfvH-Hs
Subject: Re: [Openipmi-developer] [PATCH 06/30] soc: bcm: brcmstb: Document
 panic notifier action and remove useless header
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 Markus Mayer <mmayer@broadcom.com>, gregkh@linuxfoundation.org,
 peterz@infradead.org, alejandro.j.jimenez@oracle.com,
 linux-remoteproc@vger.kernel.org, feng.tang@intel.com,
 linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 Justin Chen <justinpopo6@gmail.com>, sparclinux@vger.kernel.org,
 will@kernel.org, tglx@linutronix.de, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 mikelley@microsoft.com, john.ogness@linutronix.de, corbet@lwn.net,
 paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, Lee Jones <lee.jones@linaro.org>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 Brian Norris <computersforpeace@gmail.com>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 4/27/2022 3:49 PM, Guilherme G. Piccoli wrote:
> The panic notifier of this driver is very simple code-wise, just a memory
> write to a special position with some numeric code. But this is not clear
> from the semantic point-of-view, and there is no public documentation
> about that either.
> 
> After discussing this in the mailing-lists [0] and having Florian explained
> it very well, this patch just document that in the code for the future
> generations asking the same questions. Also, it removes a useless header.
> 
> [0] https://lore.kernel.org/lkml/781cafb0-8d06-8b56-907a-5175c2da196a@gmail.com
> 
> Fixes: 0b741b8234c8 ("soc: bcm: brcmstb: Add support for S2/S3/S5 suspend states (ARM)")
> Cc: Brian Norris <computersforpeace@gmail.com>
> Cc: Doug Berger <opendmb@gmail.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Justin Chen <justinpopo6@gmail.com>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Markus Mayer <mmayer@broadcom.com>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>

Likewise, I am not sure if the Fixes tag is necessary here.
-- 
Florian


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
