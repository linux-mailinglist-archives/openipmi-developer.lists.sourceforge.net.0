Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B9143A57E
	for <lists+openipmi-developer@lfdr.de>; Mon, 25 Oct 2021 23:08:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mf7CR-0007el-JL; Mon, 25 Oct 2021 21:08:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1mf7CP-0007ea-R1
 for openipmi-developer@lists.sourceforge.net; Mon, 25 Oct 2021 21:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e3DNRPCFYalAfFsInyW5lanrcNUI3WrTPjGsoLlw0sQ=; b=cbeV2vzFIuBRGmPZw+fTB7RBE9
 4zi0FZML4TASI7dzFlriiwlIRdW2kjAbijpEu7DedxaiCsvvu5L5O3SuZXsJpMVTULWxVmC0Kqogo
 x5XvhkTzm9Wiv8lKj0zXiI07Hz9KNO8ju35HrTuLUHCPsMuZKj/5noYleLGk2i7qMzeg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e3DNRPCFYalAfFsInyW5lanrcNUI3WrTPjGsoLlw0sQ=; b=ZsRGj7Uhx5V9kZq7vMAIbmiEK0
 OU/dUG/bP6WT16y93PyMcoPb+pD6ennRE7hkEcSrGv1MBAccq9JNssRw8oCa0GI69kkUQmn8I20l9
 bhUOEhSoobvLJaSIzQLh6dwCMSQ2ClQtY5RV1JmgSkseSU9xtFCvvKrVS/t/nSSKSrR8=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mf7CL-0006T9-OU
 for openipmi-developer@lists.sourceforge.net; Mon, 25 Oct 2021 21:08:05 +0000
Received: by mail-qt1-f179.google.com with SMTP id v17so11602009qtp.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 25 Oct 2021 14:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=e3DNRPCFYalAfFsInyW5lanrcNUI3WrTPjGsoLlw0sQ=;
 b=jaJLhQVtytdtdqyFjUqYKAmNKeJDLdc4TbpBly8Py6IeEsIKacLZwmWYf9aqF3b9d8
 gCzf+TWG2Mcv5YtkqIMhRvd4SLWEtoKa9LgNCpO5/CnYatsA2/sarYRL8QATHMBN/Xm0
 yn4KuWhvI5zPLrUxcQ4sesKq0GVMU78M1P8GlHgvmYuxQxH5AO3Dl8WVmV5YlEpAZcVZ
 e/ZsFkSXWlxf414QdBI9xP8cyCtwC1z9edKSh9Nju7EJ4AoN32JEnTX0Bi8bguw255ta
 Y1g9o76XOWvGMRyqcF6a74kXgKISt7dCywj2cupoQwEP83DnfuNtd8TyhIlI50J5DKfx
 u2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=e3DNRPCFYalAfFsInyW5lanrcNUI3WrTPjGsoLlw0sQ=;
 b=N6Dx4Bgfuw/Yz/Z5cDAbuKk6cJT4qI3JEgplRrxI13RFdXUbLV30FTbPDRp/gxP5dQ
 F/vqmTOP5kx+nnQ/xppJ5SHTjGUqDcM1WGYM7N+gtAfKQ1/XUAIHl8mMCExuJnUII3se
 /wy7BTzta7cbhU/HRqxQQAYeBkmTQJ6hQ+yIZWJPkA+A+jTn9hrcjamxKMGhCCINlcRg
 H6bxpWCu8pOqT7rsONJva0NyIJDsvlkApbeNAePm6iclUYNL/CZbMeudwtpLhlFTPZgd
 JFrpmzUYvB38TJ9/eDWIKcVDfQ0Pf3SMd3s+hmwIcQa6oedIVj93lKT+DqYyHkYrsFxm
 x4Fw==
X-Gm-Message-State: AOAM531uc4YUCpcerpWRBFOsVFt/q8f7vu/9QL+fLSPF7ymLSH+vhukV
 lb9/lYfZ19B8AzfZqpmHyKkwOn2bRA==
X-Google-Smtp-Source: ABdhPJxpTxYKuwQnEVM4z4QHx6Chz9IznL/YPzIA14NKlKpllDt7SEiXvUdGAdUS3YF75BzXzxw1gA==
X-Received: by 2002:ac8:430e:: with SMTP id z14mr19995010qtm.208.1635196075593; 
 Mon, 25 Oct 2021 14:07:55 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id b23sm8990535qkk.83.2021.10.25.14.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Oct 2021 14:07:55 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ad7f:7a7f:3b9a:4eab])
 by serve.minyard.net (Postfix) with ESMTPSA id D8C0318000C;
 Mon, 25 Oct 2021 21:07:53 +0000 (UTC)
Date: Mon, 25 Oct 2021 16:07:52 -0500
From: Corey Minyard <minyard@acm.org>
To: Wan Jiabing <wanjiabing@vivo.com>
Message-ID: <20211025210752.GC2744412@minyard.net>
References: <20211025012206.21189-1-wanjiabing@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211025012206.21189-1-wanjiabing@vivo.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Oct 24, 2021 at 09:22:06PM -0400, Wan Jiabing wrote:
 > There are 5 duplicated 'if' conditions to judge the 'run_to_completion',
 > which looks redundant. And there is no function to modify this [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.179 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mf7CL-0006T9-OU
Subject: Re: [Openipmi-developer] [PATCH] ipmi: simplify duplicated if
 condition
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
Cc: kael_w@yeah.net, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Oct 24, 2021 at 09:22:06PM -0400, Wan Jiabing wrote:
> There are 5 duplicated 'if' conditions to judge the 'run_to_completion',
> which looks redundant. And there is no function to modify this variable.

It's modified in panic_event().

> 
> Reduce the 'if' conditions from 5 times to 1 time can make code easy to
> understand and fix following coccicheck warning:
> 
> ./drivers/char/ipmi/ipmi_msghandler.c :4771:2-19: ERROR: nested
> lock+irqsave that reuses flags from line 4764.

I'm not sure this matters that much.  The comments are messed up a bit,
and probably need to be reworked.  But I'm not inclined to take this.

-corey

> 
> Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 38 ++++++++++++++---------------
>  1 file changed, 18 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index a60201d3f735..072da25124cf 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4756,32 +4756,30 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  	unsigned long flags = 0; /* keep us warning-free. */
>  	int run_to_completion = intf->run_to_completion;
>  
> -	/*
> -	 * To preserve message order, we keep a queue and deliver from
> -	 * a tasklet.
> -	 */
> -	if (!run_to_completion)
> +	if (!run_to_completion) {
> +		/*
> +		 * To preserve message order, we keep a queue and deliver from
> +		 * a tasklet.
> +		 */
>  		spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
> -	list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
> -	if (!run_to_completion)
> +		list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
>  		spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
>  				       flags);
> -
> -	if (!run_to_completion)
>  		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
> -	/*
> -	 * We can get an asynchronous event or receive message in addition
> -	 * to commands we send.
> -	 */
> -	if (msg == intf->curr_msg)
> -		intf->curr_msg = NULL;
> -	if (!run_to_completion)
> +		/*
> +		 * We can get an asynchronous event or receive message in addition
> +		 * to commands we send.
> +		 */
> +		if (msg == intf->curr_msg)
> +			intf->curr_msg = NULL;
>  		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
> -
> -	if (run_to_completion)
> -		smi_recv_tasklet(&intf->recv_tasklet);
> -	else
>  		tasklet_schedule(&intf->recv_tasklet);
> +	} else {
> +		list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
> +		if (msg == intf->curr_msg)
> +			intf->curr_msg = NULL;
> +		smi_recv_tasklet(&intf->recv_tasklet);
> +	}
>  }
>  EXPORT_SYMBOL(ipmi_smi_msg_received);
>  
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
