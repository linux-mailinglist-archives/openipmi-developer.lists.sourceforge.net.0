Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9174EED6E
	for <lists+openipmi-developer@lfdr.de>; Fri,  1 Apr 2022 14:48:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1naGZY-0004WM-O4; Fri, 01 Apr 2022 12:48:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1naGZX-0004WG-6W
 for openipmi-developer@lists.sourceforge.net; Fri, 01 Apr 2022 12:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xe47BId8FG+UXcgp+7n4Gi6HT1T1Ri6vaJkb35OI79E=; b=F2Uwh+nBh8JybNzcG0Wfml/4Pn
 OV8JOrcxN2TDvW34IIIn+mb6hjMO3W3N3NWxQmXRMTkaIfywsQPWbv2A5D0AG7WTiFXzBH4pPWBpU
 g4b/U4topAiMMpVdAYeDKSG/ozoAW05FEri+YC2F5kKKeT9rJTfuYsdqq7HffNMhShAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xe47BId8FG+UXcgp+7n4Gi6HT1T1Ri6vaJkb35OI79E=; b=ipSdMtmUmlcDqGrWgkkduLRHE6
 AZl1IfIz7j1TjWvYTZ3BjYVFC+XML3r4L7/eQt0gQnCg9qsG8c42toZZLLQ2NmJt+yS7I0+eeaMPy
 DY/aZpSyvIVklO3CSs74/VvZZ4A60jy1t+fFu6FgLs0iE90yA30hiAX7NtAH7Mykp9vs=;
Received: from mail-qv1-f49.google.com ([209.85.219.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1naGhP-001u3r-6D
 for openipmi-developer@lists.sourceforge.net; Fri, 01 Apr 2022 12:48:22 +0000
Received: by mail-qv1-f49.google.com with SMTP id hu11so1907083qvb.7
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 01 Apr 2022 05:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=xe47BId8FG+UXcgp+7n4Gi6HT1T1Ri6vaJkb35OI79E=;
 b=FBydJEEFg2JnreasDcvN+X3Fq2AX2Cs4fSs/4d70XuBUcAihS42Jlr1aVS8XHW7YOr
 yqONMeg57T9UGPkKnjAqZicVRiwKDRz+iqJj44F3jnslTpCPtd6aklA56Q8LSZ1sSdiu
 hZ7dWImKzxdcQ9Y95O55H9qi8sEtoOL7De/v8pwrpZlWNqQmuefmdiVqA2L4OIgTfFUd
 gmMT7p6izyDL3RZMSOPH1sBJp1UTxTw6PaIKuiRs6+GNDndlJG9nq6hJc4SkFxbk+SLi
 ByG5DD+UgNMKrieXWTWNAICDaXx219aIGoEEPFlRNznLCQvmruBbWclbp4KiyOcjGygJ
 6rWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=xe47BId8FG+UXcgp+7n4Gi6HT1T1Ri6vaJkb35OI79E=;
 b=sHDbBYWxAz0jFRg+E6PCk/93o1vHy+6EMu+ZxIa83tpDujUYtaaURFjKkYRNUEcBtM
 U3Af7WBaorhy90YAlWry04EnHj6484aPThgw6kBwOzod/Od+S+fNIu/g9YdnQAj9F2kg
 wW1OlRomjtWe814ef8EkJ3f4H8NLZ8d7R/cn7MgGOKJu3KtMXj6bmMQNDW+5aeZ+J2aB
 9EuiHBCp+QSsvfBA8AVvUh3iVVTUUdBEsijIy2i/TGLYsxoN3xyE8x2NLkxvgAuQyeCc
 z1+e99mY5PpNeMgJVSTJvovdUN+0JMlh8hnBpXYvNjCUv1xcVvY8VoKia+PQ0iRTadda
 u9Pw==
X-Gm-Message-State: AOAM532q6KXuQw+0hpCZQYeMCu/WmTUS1RGjXB4PSm1omhkW5nRhisr/
 5iywHJAlYmkCWM3PlGBrRaN/ch1T7A==
X-Google-Smtp-Source: ABdhPJx8tlteUME04IRt0HIMAZ9xccnNs1UTSFwNMRwSF4eO8B8on1fFqquHG3wS3X6XiJ8VpL1CdA==
X-Received: by 2002:a05:6214:e45:b0:441:718f:e14e with SMTP id
 o5-20020a0562140e4500b00441718fe14emr7602001qvc.105.1648817292858; 
 Fri, 01 Apr 2022 05:48:12 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 22-20020ac85756000000b002e1cabad999sm1694591qtx.89.2022.04.01.05.48.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 05:48:11 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:18b8:c103:5b12:b0c4])
 by serve.minyard.net (Postfix) with ESMTPSA id C8E621800BB;
 Fri,  1 Apr 2022 12:48:10 +0000 (UTC)
Date: Fri, 1 Apr 2022 07:48:09 -0500
From: Corey Minyard <minyard@acm.org>
To: Haowen Bai <baihaowen@meizu.com>
Message-ID: <20220401124809.GF29333@minyard.net>
References: <1648783665-19237-1-git-send-email-baihaowen@meizu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1648783665-19237-1-git-send-email-baihaowen@meizu.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 01, 2022 at 11:27:45AM +0800, Haowen Bai wrote:
 > msg could be null without checking null and return, but still dereference
 > msg->rsp[2] and will lead to a null pointer trigger. Actually: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1naGhP-001u3r-6D
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif: potential NULL
 dereference in msg_done_handler()
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Apr 01, 2022 at 11:27:45AM +0800, Haowen Bai wrote:
> msg could be null without checking null and return, but still dereference
> msg->rsp[2] and will lead to a null pointer trigger.

Actually:

  If you look at the big picture (how the rest of the code works), it's
  not possible for msg to be NULL in these cases.  However, being
  defensive here is probably a good idea.

  There are two of these cases, why didn't you fix both of them?

  This still doesn't fix the problem.  There is an "else if" in both
  cases that also uses msg.

You can't just look at the output of some code analysis tool and make a
blind decision like this.  You have to look at the big picture.  And you
have to analyze the code carefully.

The right way to be defensive here is to add:
	if (!msg) {
		ipmi_ssif_unlock_cond(ssif_info, flags);
		break;
	}
in both cases.  And probably add a log, since this means something else
went wrong.

Anyway, I'll add a patch for defensive measure and give you credit for
pointing it out.

-corey

> 
> Signed-off-by: Haowen Bai <baihaowen@meizu.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index f199cc1..9383de3 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -814,7 +814,7 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  		break;
>  
>  	case SSIF_GETTING_EVENTS:
> -		if ((result < 0) || (len < 3) || (msg->rsp[2] != 0)) {
> +		if ((result < 0) || (len < 3) || (msg && (msg->rsp[2] != 0))) {
>  			/* Error getting event, probably done. */
>  			msg->done(msg);
>  
> -- 
> 2.7.4
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
