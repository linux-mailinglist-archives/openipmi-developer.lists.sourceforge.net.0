Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0A26BCEE9
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Mar 2023 13:05:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pcmMN-0001YR-4f;
	Thu, 16 Mar 2023 12:05:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pcmMK-0001YF-Op
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Mar 2023 12:05:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/RHK9cOuEeUz5rqUW+dgIK39QatovxgfybZXB5f1x2Q=; b=MW+lubBxwVajRK7ZRvslkv12AX
 bkKQz610/bpEyF88OUpu4MG6qkY8Ptk6eICmC4hKPtC9/NOF9wZtMK3GxpDU68adEsjBu6immka+f
 GpbbBoY5gZtXjImeALdZqjP/gJE8ghbuPxqsICLBUORZd+dupGVZqxiLm7ok8eZtH/Es=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/RHK9cOuEeUz5rqUW+dgIK39QatovxgfybZXB5f1x2Q=; b=JydYTSD8rAZP8BxKEscGOURpkv
 5poZZRXEb9f94vjWs1TTiqangzKLPznC4i9NoTrUBxs3ChuMQe5cOyfZmnWpH2unQvRR1eFgHtODo
 9wrYAUh5YaVx9z4xidnvXyEsnLHLQ/GdvN8BWPDXe0/RA7cRmabdBkIarNBO6RkToD2Q=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pcmMK-00AgoN-NT for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Mar 2023 12:05:29 +0000
Received: by mail-oi1-f175.google.com with SMTP id w133so1173199oib.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 16 Mar 2023 05:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678968323;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/RHK9cOuEeUz5rqUW+dgIK39QatovxgfybZXB5f1x2Q=;
 b=IPwEb03AreDMeZM2z/HCIaXakUuz6kjp3MdBkPHuoqkJTPuuhLTSO68vjLKW1VGYPf
 6j7xjopGv/xIbPlhBCv1TyvSMLITYyhxP26Vkj2n1rF+JEPa90aoff/Uy+QdTKqSoe40
 sGwLf1g+An8UjfxlwC3gh30dmztkCWkDdYtavcTsXS/2R4YJbQaHq+s5AVN59PWR/zW+
 1mBUrGcQq4v8gdt5WdCfbIp5lrEw+baXr8WEXPcoHBRmXw1mL3n49AOj31ZjOIIX2a91
 +NoEu+fZ1O9XjqTE85Yro4q4/0XaemrkO/CborKe4DQRS1F70pppeVMtEjukhlkR10YJ
 ic6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678968323;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=/RHK9cOuEeUz5rqUW+dgIK39QatovxgfybZXB5f1x2Q=;
 b=nTOkNX1lCNcWCOZB01cegx3o+uqakJCq9YT5xFQhB9k8uFJyFZe3Da9+QUXiskBPnT
 3ma+yfRiFjMQNcYNdpuulv2RXkHYrBW4VBvbP00a2ZOiokOu+ri8jB1cBxRWh8fnzpUg
 EPNfABHXZsBT2bKadWIZOIO7IP4nIz8JPI0jHZDG5jMzXxaOsyfp0uyY1ff86pVHSEqR
 h110hUPzEvWDTIyvQ/w20GINUPyUW7LynbGm1hERhDdz0/LrftV9po0h0NHMVZLIGJew
 TlvwQVkLJz8jSP4V79W1pQ259936gG2CQ0iJBcTyn6d0XGX4Q5L0Z6lPViVk7NHwLo+h
 GFjg==
X-Gm-Message-State: AO0yUKWk01kOm4054kldgnmec6ctfCe1ZfEqsjOq5iLUxr0mEf3/2Hfn
 WrAMSC+FY7/RwuvXTtQBog==
X-Google-Smtp-Source: AK7set96pdgZ4Ojnlh0KkhqBkHRMtr3tl9BNUgafUZ2a3n4wFljMkTKLNUaXdgtbDXBDPDXQl2W0CQ==
X-Received: by 2002:a05:6808:234b:b0:383:f8a3:2529 with SMTP id
 ef11-20020a056808234b00b00383f8a32529mr2812623oib.6.1678968321620; 
 Thu, 16 Mar 2023 05:05:21 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 be8-20020a056808218800b0038694b7dc09sm2876498oib.55.2023.03.16.05.05.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Mar 2023 05:05:21 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:a22e:e7c0:9025:2a43])
 by serve.minyard.net (Postfix) with ESMTPSA id 069A0180052;
 Thu, 16 Mar 2023 12:05:20 +0000 (UTC)
Date: Thu, 16 Mar 2023 07:05:18 -0500
From: Corey Minyard <minyard@acm.org>
To: zipeng zhang <zhangzipeng0@foxmail.com>
Message-ID: <ZBMF/v14oqTcv7pS@minyard.net>
References: <tencent_F0BFF85BC7C1FC84E440A7B7D364D2ED4209@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_F0BFF85BC7C1FC84E440A7B7D364D2ED4209@qq.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 16, 2023 at 02:39:58PM +0800, zipeng zhang wrote:
 > There is a spelling mistake in the comment information. Fix it. It's in
 my queue. Thanks. -corey 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pcmMK-00AgoN-NT
Subject: Re: [Openipmi-developer] [PATCH] char:ipmi:Fix spelling mistake
 "asychronously" -> "asynchronously"
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

On Thu, Mar 16, 2023 at 02:39:58PM +0800, zipeng zhang wrote:
> There is a spelling mistake in the comment information. Fix it.

It's in my queue.  Thanks.

-corey

> 
> Signed-off-by: zipeng zhang <zhangzipeng0@foxmail.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index a5ddebb1edea..1a85b400e929 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1283,7 +1283,7 @@ static void ssif_remove(struct i2c_client *client)
>  		return;
>  
>  	/*
> -	 * After this point, we won't deliver anything asychronously
> +	 * After this point, we won't deliver anything asynchronously
>  	 * to the message handler.  We can unregister ourself.
>  	 */
>  	ipmi_unregister_smi(ssif_info->intf);
> -- 
> 2.39.2
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
