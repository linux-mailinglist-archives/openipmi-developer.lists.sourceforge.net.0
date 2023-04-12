Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0646DF55D
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Apr 2023 14:35:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pmZgl-0003N3-5K;
	Wed, 12 Apr 2023 12:35:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pmZgj-0003Mp-Ox
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Apr 2023 12:35:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cDK9Cp8HzVSl++mB/RxkaQtFo/hPIKWZDJJQXS4MtRA=; b=FgiwDnUyt3IrNMO8POU8DUV2tp
 JDNuyPb78/eRh1OwlmUgnduQv0DOlfNn1FFVt8XKYr6roeiCIWonW703cA2hP3HveU3KW9F0aqo+D
 lZAVH6dk7q39erI4zLMt/LoXb/urjhWib9mWrCa1YjqxkjKmPNmN0z3RH/cTs6+j8ltI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cDK9Cp8HzVSl++mB/RxkaQtFo/hPIKWZDJJQXS4MtRA=; b=iMMbYaGBpGZLO16mre0IMB0KE2
 UoCcGW8Phw7RKvYEnuCW9DgU1UM+cnp3/xaHzWsR7DQgkQSWxkZIY2W+OfGV5seu5HqfUC23gq+SS
 7vH5jQE2LFmyrP1PjVe4kwRFTQ0pqQPXa6p94lrO/kuiPXYxMw1nP4a+NLmz2hCTtZpI=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pmZgf-0001lF-Ih for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Apr 2023 12:35:00 +0000
Received: by mail-oi1-f182.google.com with SMTP id q28so686237oiw.5
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Apr 2023 05:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681302892; x=1683894892;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cDK9Cp8HzVSl++mB/RxkaQtFo/hPIKWZDJJQXS4MtRA=;
 b=Rh63gHiSr6jmdLK3n7x+ra3VpE6pkEpkG0NgICKr1ebfWXTbCJDoJ+yl7lzPJjkqJ+
 iN5F2DExWmIPNV4vok9BXSEF9DGV6VZDYg2OSQZhaUnSCUwVNHHjHl6SEZS4YNDiL6E3
 fhgbXxvCfU25nPPHPKVci+m6jGWKKc/xiiFR6VVkgF/ju1r+ei0QzwymlAtl+O0ZIoqY
 FXivzHnSi5D18dgGPOEw6lG2ZI3njV/n48o+nHZcrJS0aG509Kilvh36vTRHHA9IXMZo
 OeRmmYaSdDwqUoKwR2YxABZkQAosnVlUODTf61N1EcDq1Akvx0wrOz2bP+D9tUIXLYI7
 NLIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681302892; x=1683894892;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=cDK9Cp8HzVSl++mB/RxkaQtFo/hPIKWZDJJQXS4MtRA=;
 b=MTTN+9Ut/HIHLLaYkFpsT9NEwvl0Ck7ERN7m6rPdkJ7U4ekXqX06skKTnjMmzeAxht
 cuMc2b6fn9ZLwDGrGIKRq+nq1oBgGO8B6sImE0lAnENby8Tmjzwpqw1gs6JFUmEMBOZ5
 lVzxtm19xO9EgQaMGAp3gTWMD5CKSKTOOp7Kxy5MmhCguKGGnIB9mwwux6scmgG6SczK
 Hn+/SsPi0kehOi/uF3DYVV7qF91o5o9vF0XTRrFdqgAW6qVN+NJKdipsf72fxfMr+PXQ
 fc0pmlH4T6hSy/ijeXrU8JDkPSK/3iD5sAO8pOirSJEuXQCcttJ5rP+GkMRJfGbpsHOg
 vhlA==
X-Gm-Message-State: AAQBX9etyKaIuemEDD9ojuvcaJpm/Iy0r/gSnLb45Nn94VosV3aauuV9
 ajLd0nwgd4YvAT7CvSdc7J2vAUUzOg==
X-Google-Smtp-Source: AKy350aFbiAZ6znhOOgC3aWDyFn0gBmlU6uNr2ehVUGesJOXn42UyVCByZDJZzxKxdUVbjReaX36uw==
X-Received: by 2002:aca:a9ca:0:b0:389:4d01:de0d with SMTP id
 s193-20020acaa9ca000000b003894d01de0dmr1390870oie.15.1681302891703; 
 Wed, 12 Apr 2023 05:34:51 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 e2-20020acab502000000b00383eaf88e75sm6619830oif.39.2023.04.12.05.34.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Apr 2023 05:34:51 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:6dde:1386:156e:63])
 by serve.minyard.net (Postfix) with ESMTPSA id 38D3D1800BB;
 Wed, 12 Apr 2023 12:34:50 +0000 (UTC)
Date: Wed, 12 Apr 2023 07:34:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Message-ID: <ZDalaSuK1P7Tg3sC@minyard.net>
References: <20230412074907.80046-1-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230412074907.80046-1-zhangyuchen.lcr@bytedance.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 12, 2023 at 03:49:07PM +0800, Zhang Yuchen wrote:
 > The ipmi communication is not restored after a specific version of BMC
 is > upgraded on our server. > The ipmi driver does not respond a [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pmZgf-0001lF-Ih
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix SSIF not responding
 under certain cond.
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

On Wed, Apr 12, 2023 at 03:49:07PM +0800, Zhang Yuchen wrote:
> The ipmi communication is not restored after a specific version of BMC is
> upgraded on our server.
> The ipmi driver does not respond after printing the following log:

Excellent explaination, this is queued in my branch for the next release
and marked for backport.

Thank you,

-corey

> 
>     ipmi_ssif: Invalid response getting flags: 1c 1
> 
> I found that after entering this branch, ssif_info->ssif_state always
> holds SSIF_GETTING_FLAGS and never return to IDLE.
> 
> As a result, the driver cannot be loaded, because the driver status is
> checked during the unload process and must be IDLE in shutdown_ssif():
> 
>         while (ssif_info->ssif_state != SSIF_IDLE)
>                 schedule_timeout(1);
> 
> The process trigger this problem is:
> 
> 1. One msg timeout and next msg start send, and call
> ssif_set_need_watch().
> 
> 2. ssif_set_need_watch()->watch_timeout()->start_flag_fetch() change
> ssif_state to SSIF_GETTING_FLAGS.
> 
> 3. In msg_done_handler() ssif_state == SSIF_GETTING_FLAGS, if an error
> message is received, the second branch does not modify the ssif_state.
> 
> 4. All retry action need IS_SSIF_IDLE() == True. Include retry action in
> watch_timeout(), msg_done_handler(). Sending msg does not work either.
> SSIF_IDLE is also checked in start_next_msg().
> 
> 5. The only thing that can be triggered in the SSIF driver is
> watch_timeout(), after destory_user(), this timer will stop too.
> 
> So, if enter this branch, the ssif_state will remain SSIF_GETTING_FLAGS
> and can't send msg, no timer started, can't unload.
> 
> We did a comparative test before and after adding this patch, and the
> result is effective.
> 
> Fixes: 259307074bfc ("ipmi: Add SMBus interface driver (SSIF)")
> 
> Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index a5ddebb1edea..48be3694fa64 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -784,9 +784,9 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  		} else if (data[0] != (IPMI_NETFN_APP_REQUEST | 1) << 2
>  			   || data[1] != IPMI_GET_MSG_FLAGS_CMD) {
>  			/*
> -			 * Don't abort here, maybe it was a queued
> -			 * response to a previous command.
> +			 * Recv error response, give up.
>  			 */
> +			ssif_info->ssif_state = SSIF_IDLE;
>  			ipmi_ssif_unlock_cond(ssif_info, flags);
>  			dev_warn(&ssif_info->client->dev,
>  				 "Invalid response getting flags: %x %x\n",
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
