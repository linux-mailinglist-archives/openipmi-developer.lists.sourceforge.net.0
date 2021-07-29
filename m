Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B93E73DA46F
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Jul 2021 15:37:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m96Dv-0006i2-Or; Thu, 29 Jul 2021 13:37:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1m96Du-0006hu-Kq
 for openipmi-developer@lists.sourceforge.net; Thu, 29 Jul 2021 13:37:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gBxV/M7bf2etL/92MOXLTUY4CDfUBQBpgr1XUu4vYcA=; b=Bx/b+aX8br1P1UMoa8DQC75QGt
 +n5+IJFPYqmeJMiO8zuSnk+bi3vpPFbtFDFq4n5UF7yhaQKJGw4VnVR+/qRFR6kNa/nz3MAe/TOGB
 tqt9TPHZa5tJ+QqFVp6A8O8z5I5sOBbNaEW2Fiq+MZP+/9jEfNGgO+ylRuGhjmMX+mcA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gBxV/M7bf2etL/92MOXLTUY4CDfUBQBpgr1XUu4vYcA=; b=ZO0R0b5b2GjTvhUyNY6tSnG5bB
 ikU9cn666O0tq1g+gkzU6Xm1jXjjv5n6F2JSmwKLD0YaJT0jHAhZ+QQwbGcKEyOnQQl2Mftpj5I7U
 dqWAmT5Z0nlh8Iy2MXate6iQs48fxCSKs0uf+jJOP3LYPEIUXulS21eJ/g8+fVn2+KK8=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m96Dr-006YPw-S1
 for openipmi-developer@lists.sourceforge.net; Thu, 29 Jul 2021 13:37:18 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 f20-20020a9d6c140000b02904bb9756274cso5862884otq.6
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 29 Jul 2021 06:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=gBxV/M7bf2etL/92MOXLTUY4CDfUBQBpgr1XUu4vYcA=;
 b=oGAthEtoTSzHFxxLQFMLZPF5yd9CQBS7RH1B1es+5lCOp2ehQKryNcj/fXd4xtn1CS
 XsoxAcnNjO17jL2FmsXRcZf5tJEE77N8xW+WZhLu43aH6J0uy3XPxz1chSLz4zJC7QhO
 BEJ5G7/MstWPmXNut1M4N44l8dJ+kQ3qvCsPelSUMGB0Ph24D3oFpLiGrrjvWwjQixIb
 /1lJ/JI8LbCmmixhIPE2mBuzZ32UG33wgT1N1oWmCEmkozn/1TRMtJJzb5oPEXuiwqLY
 tKPWPTvxYkx/HmZckEQhnQO4RVZLqKm54SaGhAmKAcmoHnzfherPul7fOLtyNK9QnCFJ
 Cfmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=gBxV/M7bf2etL/92MOXLTUY4CDfUBQBpgr1XUu4vYcA=;
 b=FlSUmNs5rwBZcgvEWlhrktrvmJWNUf7uPxGVH/MbYuKSGPhoST4lPLafNUdgxZdhBe
 KaXQsu+0dy2G5424fWgGiIRcCiNyNurKi9tBTWBOBWw2Y7EtJ0qgzCF6qqgz64Emmvqd
 6c4wkT/AX+pKLRZ213LnbN37jrd+9LEM6YYy2UsDLhlNiQv6UF3H7qYCPzA1WEJN5jKj
 BG9hB2fIu3OsvPhn4dn1i0jI9zMtZeDbaBlu1mrdGEef0T/xaWSgwCN94Kx7RVLrO3tI
 G4+SIOXlmntsBeuDwwzyF73944h7crwW/AfpLXckRJ3zM7aCIWMokExN/VL8y4Iixwn6
 QmTg==
X-Gm-Message-State: AOAM533+0efOPtK0w29IFbZ7XXRIkPPE396byOaLpezuQSnVGiqCtaoQ
 ZrDMj/65RIblagoOSDfJbQ==
X-Google-Smtp-Source: ABdhPJzjEk41gfRrNOFiVGteeIFO1VphmT7/VAtIp7bnH9p4eXZFRDKwHQBh5DNB/gtyudCBsu+MnA==
X-Received: by 2002:a05:6830:1dab:: with SMTP id
 z11mr3457577oti.107.1627565829930; 
 Thu, 29 Jul 2021 06:37:09 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id m4sm477094oou.0.2021.07.29.06.37.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 06:37:08 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e842:87d0:ed02:228a])
 by serve.minyard.net (Postfix) with ESMTPSA id C921A18005A;
 Thu, 29 Jul 2021 13:37:07 +0000 (UTC)
Date: Thu, 29 Jul 2021 08:37:06 -0500
From: Corey Minyard <minyard@acm.org>
To: Wen Yang <wenyang@linux.alibaba.com>
Message-ID: <20210729133706.GY3406@minyard.net>
References: <20210729093228.77098-1-wenyang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729093228.77098-1-wenyang@linux.alibaba.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.48 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alibaba-inc.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1m96Dr-006YPw-S1
Subject: Re: [Openipmi-developer] [PATCH] ipmi: rate limit ipmi smi_event
 failure message
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Baoyou Xie <baoyou.xie@alibaba-inc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jul 29, 2021 at 05:32:28PM +0800, Wen Yang wrote:
> Sometimes we can't get a valid si_sm_data, and we print an error
> message accordingly. But the ipmi module seem to like retrying a lot,
> in which case we flood the kernel log with a lot of messages, eg:

This is reasonable.  I moved the #define into the dev_warn_ratelimited
because that looked a little strange, and having the #define really
didn't add any value.  But that's it, queued for next release.

Thanks,

-corey

> 
> [46318019.164726] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318020.109700] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318021.158677] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318022.212598] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318023.258564] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318024.210455] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318025.260473] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318026.308445] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318027.356389] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318028.298288] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> [46318029.363302] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
> 
> Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
> Cc: Baoyou Xie <baoyou.xie@alibaba-inc.com>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 62929a3..f64c3ac 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -591,7 +591,7 @@ static void handle_transaction_done(struct smi_info *smi_info)
>  		smi_info->handlers->get_result(smi_info->si_sm, msg, 3);
>  		if (msg[2] != 0) {
>  			/* Error clearing flags */
> -			dev_warn(smi_info->io.dev,
> +			dev_warn_ratelimited(smi_info->io.dev,
>  				 "Error clearing flags: %2.2x\n", msg[2]);
>  		}
>  		smi_info->si_state = SI_NORMAL;
> @@ -683,10 +683,11 @@ static void handle_transaction_done(struct smi_info *smi_info)
>  		/* We got the flags from the SMI, now handle them. */
>  		smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
>  		if (msg[2] != 0) {
> -			dev_warn(smi_info->io.dev,
> -				 "Couldn't get irq info: %x.\n", msg[2]);
> -			dev_warn(smi_info->io.dev,
> -				 "Maybe ok, but ipmi might run very slowly.\n");
> +#define IPMI_WARN_CHECKING_ENABLES "Maybe ok, but ipmi might run very slowly."
> +
> +			dev_warn_ratelimited(smi_info->io.dev,
> +				"Couldn't get irq info: %x, %s\n",
> +				msg[2], IPMI_WARN_CHECKING_ENABLES);
>  			smi_info->si_state = SI_NORMAL;
>  			break;
>  		}
> @@ -721,7 +722,7 @@ static void handle_transaction_done(struct smi_info *smi_info)
>  
>  		smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
>  		if (msg[2] != 0)
> -			dev_warn(smi_info->io.dev,
> +			dev_warn_ratelimited(smi_info->io.dev,
>  				 "Could not set the global enables: 0x%x.\n",
>  				 msg[2]);
>  
> @@ -1343,7 +1344,7 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  
>  		if (cc != IPMI_CC_NO_ERROR &&
>  		    ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
> -			dev_warn(smi_info->io.dev,
> +			dev_warn_ratelimited(smi_info->io.dev,
>  			    "BMC returned 0x%2.2x, retry get bmc device id\n",
>  			    cc);
>  			goto retry;
> -- 
> 1.8.3.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
