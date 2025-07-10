Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED1BB003A8
	for <lists+openipmi-developer@lfdr.de>; Thu, 10 Jul 2025 15:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AiZKIpAu5OO9RcHl5L6hli7aPYE/jSuyZYC8YTr5o3o=; b=D+Op0ONG5pjMi47zWHxuAQtM6H
	sizo1mAqbAvs1f/BBDFczf2vwqyn9MywJpxxjPnZZuY9e4HXEEaOqXClqlvvKPmy0r1u/POyw/Sbp
	paO/3uf8QGThwss6fCH5uLR4CzYzJ2WEz9e+Th7zFAylW80Yc+7wSp508YcALo/fagZM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uZrSb-00077M-U0;
	Thu, 10 Jul 2025 13:37:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uZrSa-00077G-8I
 for openipmi-developer@lists.sourceforge.net;
 Thu, 10 Jul 2025 13:37:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VfL7rv/TBn1ODKWf0HFqJjPlTMTSbxnh7pmA5WaWrbA=; b=O62WCWYrgDlNN4y0ddEvF5AGNd
 73FItE+WA3XkSGbpq/pro7kJ+f4xvroVpaS+UzAML85skvXE4w4PE0rzkadAGJODklc7VQ47j13HB
 44rpnGpCfyhFbslykwgbP0BVUmnTKj6Hh00eLMkr2ZeJdo+gU50a7x5k9MihMj5uwuJs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VfL7rv/TBn1ODKWf0HFqJjPlTMTSbxnh7pmA5WaWrbA=; b=LAzNpKTlZhmi+gGFqWgsBlRycQ
 Qiqc/wxW0TbBUBCCd1bsZRlvqJF6AeHSG5HvR2ip/A22D85fmOrvILJVkPRy6gQ09Lzcya70Vnxug
 1b64RdOKPbIYg1FlKuOndRrbK2jFP8obG5qEaoXq12Xw+Ui99kosOM3s56+mvb6c0vvs=;
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uZrSZ-0006ES-Ng for openipmi-developer@lists.sourceforge.net;
 Thu, 10 Jul 2025 13:37:12 +0000
Received: by mail-io1-f48.google.com with SMTP id
 ca18e2360f4ac-86d0168616aso83341739f.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 10 Jul 2025 06:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1752154621; x=1752759421;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VfL7rv/TBn1ODKWf0HFqJjPlTMTSbxnh7pmA5WaWrbA=;
 b=y8Hmsoz5sJiNbiy9wIx1KzfIQnHbv8kU5JlGjLzEAINk/7e+nPvh38lkFqQTr3Oj07
 Z75rGUXgyLOeZ+uo4mK6mX3GG0gt+xUBpi26KpiTPwC8kREu/1IJr1uEUP/Bdnjrx8K8
 OtS+pqZjizaMduiTTs7EFYnoua2K7n3MfDjp+isopsQ12J85eyKSujcBhfXJ8l4C6KLc
 KFy5gMUsURs3YpYJRYvWTJ/2HW9ZP4DmZAB0iUO0D1zsAMbjMfaDdawT5DwUQX/oShpi
 lzSXQN8p9Avf8T/ZWfDicP8TJXRntGvCEwEbCjQVb289RDzysGthaK8lK+cP9/Z6cNdQ
 w+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752154621; x=1752759421;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VfL7rv/TBn1ODKWf0HFqJjPlTMTSbxnh7pmA5WaWrbA=;
 b=GYrQH6bUYAtdnWmQ01jIZfaJYzuPp2VoNHRKeN+Tczb6cqyML6Y3bFJd9QrVvcyZYK
 W/RGCKcPs7LZorcE9S9PWuWlZfSuEJCGzBzN809Izs7ivVP4WH2XJHaLtRYyzPYaUf/V
 6Lofd1YmiPc0tFx2pvrokEtvSq4nKOhVbrS9ybrNtj8L8hVukPiteOhMyXWzYbrhA5yw
 lYDpe2BM7QIB77K1Co7xzIzRESYPggwEBV5+n9+DTuWh2HumYxlbX80KGrK+WgcNKZzM
 8+JFlMgOzicAQBfR9TrzoaVKMCdVx0gYiQ6So8dGY15MZaSE1AJkJff0nk4oB11KXIMp
 l5nw==
X-Gm-Message-State: AOJu0YxYeq+O0f1ln0wU89j1hoqLGBlGH/H8dLqQPz68xE2Pq2yZbh7y
 p7+e9rw3irCHsa2WAM0CzpEns0DKkWRx/H9sZg5Wssnm6YPcqKRjIGqkP6rWsEyu8uw97co4OM/
 wpT8Wj2U=
X-Gm-Gg: ASbGncurmZqNX+bkgEWQg9l5vP2c9UpdCeo9l5TKRMjxQTny+n4ASakdtvXU8ai1Lgu
 p2VzZl0pz22cuHiflddJ5NYuqOXb9Pnds8DawxHWsYRzm3r1S5/WzqVYKh7ZV3hBRinioA5uk4/
 1PkzhBb0At3kOHfiK7FVkFr5oWVglTkU3Cf6TIYeh9kFE4I6giXgAzHAJJwfKdB6a0Co8sBRJMC
 R7jGbzvni04z8IR+7cg9tL+60cz8GCVMHVIv6pf8kK9cJXZKYvhHyCrBvP4lXUjc2OaGX/TZP1F
 G5ze3xU/Q2F81jLkhzoRy4AuzP1TUz3IUCmnrEqt6plHNYyADhrYyOqDwQAmn5cHag5MQqcskAO
 1
X-Google-Smtp-Source: AGHT+IH4hXRkZjglmlT7hSDhFdsQbESQ0W2qXubwY+npmOLdfdMtfKgbpg4MnTMzaFamttvKUUJhaA==
X-Received: by 2002:a05:6808:3a0d:b0:403:3fb7:3870 with SMTP id
 5614622812f47-413f3f682d8mr1735574b6e.10.1752152716830; 
 Thu, 10 Jul 2025 06:05:16 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ec53:8290:86a1:aa7c])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-4141c1ac53asm197206b6e.39.2025.07.10.06.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jul 2025 06:05:12 -0700 (PDT)
Date: Thu, 10 Jul 2025 08:05:06 -0500
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>
Message-ID: <aG-6gtCvsowPbH8v@mail.minyard.net>
References: <20250710-ipmi_ratelimit-v1-1-6d417015ebe9@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250710-ipmi_ratelimit-v1-1-6d417015ebe9@debian.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jul 10, 2025 at 05:57:26AM -0700, Breno Leitao wrote:
 > During BMC firmware upgrades on live systems, the ipmi_msghandler > generates
 excessive "BMC returned incorrect response" warnings > whi [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.48 listed in wl.mailspike.net]
X-Headers-End: 1uZrSZ-0006ES-Ng
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Use dev_warn_ratelimited()
 for incorrect message warnings
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@meta.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jul 10, 2025 at 05:57:26AM -0700, Breno Leitao wrote:
> During BMC firmware upgrades on live systems, the ipmi_msghandler
> generates excessive "BMC returned incorrect response" warnings
> while the BMC is temporarily offline. This can flood system logs
> in large deployments.

So the BMC is returning bogus messages during an upgrade?  That
sounds like a bug in the BMC, it should either work or be
quiescent.  Returning incorrect data can result in bad things
happening.

But, as many thing IPMI, we have to accommodate bad designs.
This change is probably a good idea, anyway.

Queued for next merge window.

Thanks,

-corey

> 
> Replace dev_warn() with dev_warn_ratelimited() to throttle these
> warnings and prevent log spam during BMC maintenance operations.
> 
> Signed-off-by: Breno Leitao <leitao@debian.org>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 064944ae9fdc3..8e9050f99e9ef 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4607,10 +4607,10 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
>  		 * The NetFN and Command in the response is not even
>  		 * marginally correct.
>  		 */
> -		dev_warn(intf->si_dev,
> -			 "BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
> -			 (msg->data[0] >> 2) | 1, msg->data[1],
> -			 msg->rsp[0] >> 2, msg->rsp[1]);
> +		dev_warn_ratelimited(intf->si_dev,
> +				     "BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
> +				     (msg->data[0] >> 2) | 1, msg->data[1],
> +				     msg->rsp[0] >> 2, msg->rsp[1]);
>  
>  		goto return_unspecified;
>  	}
> 
> ---
> base-commit: d7b8f8e20813f0179d8ef519541a3527e7661d3a
> change-id: 20250710-ipmi_ratelimit-7e1af5170c57
> 
> Best regards,
> --  
> Breno Leitao <leitao@debian.org>
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
