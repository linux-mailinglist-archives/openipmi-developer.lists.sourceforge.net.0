Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAZHIiOL7GmtZgAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 25 Apr 2026 11:36:35 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0745465B4B
	for <lists+openipmi-developer@lfdr.de>; Sat, 25 Apr 2026 11:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DoR5P0wOrbwdGaHTv54zLxaAmoDwnDxjWLoksXjDbcU=; b=aWrABE2dEC5YssB6uIMEGtBv5H
	A893os4gKAeoC8X2xcQAL+yO8N42k57o/IEed9FZqVBxG/VwAEfFLfCL2JLvBfCxqRQAweT/XH0Nv
	5rNDi7Zx6EqK9b2CAjZ0Fp30+GVrWEUjC7eYj1rlhPYCXeRcEUYq/DIfKXiuOYDx7PHk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wGZQz-0004uU-CC;
	Sat, 25 Apr 2026 09:36:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wGZQy-0004uN-4Z
 for openipmi-developer@lists.sourceforge.net;
 Sat, 25 Apr 2026 09:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sSxxsg0M9lsnfvFXhmfiavy25zETA/dru9Yv7zXBB/8=; b=dAYphx16q5LJ/Jba29rb7yq6lO
 lZle2FjUe+Upz4Fz59ZGRNIRn0AKjaSyfYk/SP/bvcJNrbcDM/V/IjmQURGWmRwAllEZdD6+Ff1aP
 4weg/NSgVm4wMWn7CZFwTW3zfIR5d6/smR2ZPpzaBtuy/JyyTgU+R+i+gbB654zZAivI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sSxxsg0M9lsnfvFXhmfiavy25zETA/dru9Yv7zXBB/8=; b=NMsg5abv7+6zRhuRo8lhrMuyie
 YTe187DckFtPv/U4l2TIzU28q8vs1+nE92bWpe8aUl+NrIkOkXAlpiFlnGfF0uA9ePvNEaSsznhCU
 5vatKjvQuPqPI7FL7ta5KkUPmYxT6M2akg37o6pn75KAwKscNU4Cy1dkX/sGLE8xMrJk=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wGZQx-0003xO-8G for openipmi-developer@lists.sourceforge.net;
 Sat, 25 Apr 2026 09:36:20 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-488b3f8fa2bso86065405e9.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 25 Apr 2026 02:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1777109768;
 x=1777714568; darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=sSxxsg0M9lsnfvFXhmfiavy25zETA/dru9Yv7zXBB/8=;
 b=j1pZGOiveUPH2icBq1mMnwbRvNXOuvOzRgFEST0Yk6C43JoQ+eUOAar7ziHqSGIiGr
 KeOlzSpAAjewHTXEx2EoRB6YckYOK7Ej/H2UKyn8j/ep8YA6kQ/u7l8bZ2zhPx5/e8+v
 Qcj5P2l0Kb6iYEiRVcaMoLXfnbucspQp9T96ycFNnsTy8514rEn1kMDQYvO5ulGZtINY
 uQaKDh/RdVEvG5o0i2DExDeUeyepnkasxAuAtEXILO1kN7wxkFOFl3uWyB3twZSVDyK8
 485K1f2bfdS4xut6sTlLQp2Nh+XWOBJxySNnsdEed17e+E3EqpUQWceccbqn4yC7zHG5
 GqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777109768; x=1777714568;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sSxxsg0M9lsnfvFXhmfiavy25zETA/dru9Yv7zXBB/8=;
 b=VfkCzwoX59mRr3bcxsvh1iNiQBvetzxhuAbXLlTdsvsZcNHJbqZ8WC+H0K9juKPCJf
 JgL1LKBQgGDYux4AawQRCg+5DY6fYJoMeowxR5haBZ10y5zb+xPydPdmiZrO+KElAXWm
 FlDdJI1fSD3vF2MNEktmRCAec/2b6mTUOGL5z+oBsz1UTK1fhWxkr1ctWceW2y0pHfzK
 qYmUMCxq8nTNIIE186l1vjESjVZ1Hkjnxq2+BZVD3ItLCsF166s/V/+KZGVLKVlJw9DR
 FExxlqNkjf99uWeoOJAa5EFacBoI+JmP13NtQJPXLiOGJX59+9/jpenJgMhcBew6rlDw
 nGGg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9QcsLq7v1wMhOB+j25aQ480wlHmVlPImltn+D9hXqpTuliK8496ZIhhkkBNM6Crgq18owpT3mFbxJvMfLci3hcVrg=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxlC5uTMZb6/nKJsXlqVzsJpe+ZbXrUMyO6Y6glqOp7UnDfnUA9
 VzI3IjUzg0LTh+mAJBV0NxxniJ13MRG6V8OBjLOOOqVKeTIN9EDZCUkMyKDIr6n/5cc=
X-Gm-Gg: AeBDies0Av7Jaa/30EvVK9K5t1m3R8tnjM1t2SqGlU4gxPfHNpJkpqszj5bdwWA6oS6
 GvlZOxpE4gc8cxKX+VV7jjz7GgqXD6KkjqNS+xZ3hCLKqV0SFoqjJU5rdBHnlzT+lGa1UQPMYtB
 rnh4iLK2Og9HoGQK7YUT7YgneS+Oy3Z0K9oeF5P/l8ZpuXzDITGEIdwG58HfFHibVwY6G3GqfgZ
 f6wA6t5mDWfdFiPzhJ+RB3mQ8rTbeZwOn2e6hNLLSL0qSYrYrs4dSMkulLw5KcBSepOyR/7zhGV
 XAZiSPQk8xirXciMiz7+0Nb7Sej3MRdftvsJQoG0hkAUe/yxSvBMlLuSUjV5+VehDiNieexpaj0
 SwCQXbTIgQfs25uFMEOKz5f6Mpp0wU5xxaQx1sO8Yv8/rpWnU+bIXg8Lw2Iqox+y35szxAh5SDn
 4dZ5cj1nicsfmdD3RG4BWz
X-Received: by 2002:a05:600c:a410:b0:48a:5821:6006 with SMTP id
 5b1f17b1804b1-48a5821692dmr228002255e9.4.1777109767130; 
 Sat, 25 Apr 2026 02:36:07 -0700 (PDT)
Received: from localhost ([2a09:bac6:37a8:1cdc::2e0:32])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48a5aa3ae83sm491347625e9.12.2026.04.25.02.36.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2026 02:36:06 -0700 (PDT)
Date: Sat, 25 Apr 2026 10:36:05 +0100
From: Matt Fleming <matt@readmodwrite.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aeyJ0fClAWI2lBwL@matt-Precision-5490>
References: <20260421132544.2666174-1-corey@minyard.net>
 <20260421132544.2666174-3-corey@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260421132544.2666174-3-corey@minyard.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 21, 2026 at 07:42:44AM -0500,
 Corey Minyard wrote:
 > The driver would just fetch events and receive messages until the > BMC
 said it was done. To avoid issues with BMCs that never say they [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
X-Headers-End: 1wGZQx-0003xO-8G
Subject: Re: [Openipmi-developer] [PATCH 2/2] ipmi: Add limits to event and
 receive message requests
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
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tony Camuso <tcamuso@redhat.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: B0745465B4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,readmodwrite-com.20251104.gappssmtp.com:s=20251104];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	DMARC_NA(0.00)[readmodwrite.com];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,readmodwrite-com.20251104.gappssmtp.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:email,minyard.net:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

On Tue, Apr 21, 2026 at 07:42:44AM -0500, Corey Minyard wrote:
> The driver would just fetch events and receive messages until the
> BMC said it was done.  To avoid issues with BMCs that never say they are
> done, add a limit of 10 fetches at a time.
> 
> This is a more general fix than the previous fix for the specific bad
> BMC, but should fix the more general issue of a BMC that won't stop
> saying it has data.
> 
> This has been there from the beginning of the driver.
> 
> Reported-by: Matt Fleming <mfleming@cloudflare.com>
> Closes: https://lore.kernel.org/lkml/20260415115930.3428942-1-matt@readmodwrite.com/
> Fixes: <1da177e4c3f4> ("Linux-2.6.12-rc2")
> Cc: stable@vger.kernel.org
> Signed-off-by: Corey Minyard <corey@minyard.net>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 15 +++++++++++++++
>  drivers/char/ipmi/ipmi_ssif.c    | 15 +++++++++++++++
>  2 files changed, 30 insertions(+)
 
[...]

> @@ -410,6 +413,7 @@ static void start_getting_msg_queue(struct smi_info *smi_info)
>  
>  	start_new_msg(smi_info, smi_info->curr_msg->data,
>  		      smi_info->curr_msg->data_size);
> +	smi_info->num_requests_in_a_row = 0;
>  	smi_info->si_state = SI_GETTING_MESSAGES;
>  }
>  
> @@ -421,6 +425,7 @@ static void start_getting_events(struct smi_info *smi_info)
>  
>  	start_new_msg(smi_info, smi_info->curr_msg->data,
>  		      smi_info->curr_msg->data_size);
> +	smi_info->num_requests_in_a_row = 0;
>  	smi_info->si_state = SI_GETTING_EVENTS;
>  }
>  

Would it be better to move this zeroing to handle_transaction_done()?
Otherwise we reset the counter in handle_flags() ->
start_getting_events() and the threshold is never reached.

Thanks,
Matt


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
