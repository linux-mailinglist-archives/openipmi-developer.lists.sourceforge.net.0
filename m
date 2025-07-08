Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E814AFD5A9
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jul 2025 19:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xw29FPCi1U5a0fjXgj4OkXWIMVc3CBflnHg8xXLO9qQ=; b=lEG0QwpxkaOtPTDb/cxzEdw6+S
	13LGJi5SzgDAjI/QYerJOW3klVoSqyFIMZ2R744LTU3qx1rp3esyRc4JN38Qr167QAxxl2j9VfyqI
	W5oA3jPuEB2ULFk20JynXkPxRbV8C3f2OryIvkMZ8LtDKJKxzE03nO6LnlR3HjVG2/PU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uZCRd-0003rh-13;
	Tue, 08 Jul 2025 17:49:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uZCRb-0003rQ-Iv
 for openipmi-developer@lists.sourceforge.net;
 Tue, 08 Jul 2025 17:49:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C+8r9BFJWIuHw4v0fMNwjGf8h2YGSArWLMNGT0WpB2A=; b=LIgnmEdrEWUYSryzvyXX+ikWFo
 qWY2aRcWlAs8Ggk1MIl427874N7PYyHGVUgLPJRas14pM2+S6fiSF0meowqDz2hRT8gGRAV3TuyJ2
 zQTUVNUTbtmXBmZyqXdRUabi/3KlMih09IwKKxzvzCZi3dRbBi3izbXRNto1qR2cgaew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C+8r9BFJWIuHw4v0fMNwjGf8h2YGSArWLMNGT0WpB2A=; b=QiqQNqwHJIcJ2TkoBAfhN9rSS0
 DC9r+QcbD7QOK5nAuXLbrBrueMnJcmk3mpI/y5W/D/VGzNG3tP4a2AmH5O21Yz7jnHAsKDTy/kBwt
 9Aq3rhpobS7fwZldyEj76Fd3kvUujPNOrbqelROJcTlUR6qFF7OZp645+9Gz0r92yWEQ=;
Received: from mail-qt1-f170.google.com ([209.85.160.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uZCRb-0001qO-7u for openipmi-developer@lists.sourceforge.net;
 Tue, 08 Jul 2025 17:49:27 +0000
Received: by mail-qt1-f170.google.com with SMTP id
 d75a77b69052e-4a44e94f0b0so59423231cf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 08 Jul 2025 10:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1751996956; x=1752601756;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=C+8r9BFJWIuHw4v0fMNwjGf8h2YGSArWLMNGT0WpB2A=;
 b=WaTdpmoWrbeTCkMLmgBZ0uNSFoK1vNEmW3T3IokqPaq56wZrLoVdK/rYfNr32lkXag
 OLvSRRjWtPvuqJgw+Hij/qPaRwi6koZlw+Y+1JBegQ9vFN+ATk6fKtCQcD4PwJhW6FWR
 i7EnwDLvClyvWjlWNifuhQ5FAex0BAJqbI20RCfv9f/8qvBHQQY/2wbgZ9jglp75AgY+
 ysM0Qa6oUWorH4J3V55cH5k/82gBzeVsbYtX1zxMog9ud+K9cfVYEwxP2gyqvq0w/LaT
 m0yO0xiSAysJ74TW8HXH5RawPAQKftfLYLWA0mpXvGv5zNFE8RCe3TkuzswmB98KO1Fp
 rk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751996956; x=1752601756;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=C+8r9BFJWIuHw4v0fMNwjGf8h2YGSArWLMNGT0WpB2A=;
 b=N6jVJPWGxbdVFpwnWmbmB0cJGYDuJWTAyClxQd7eE4rx6eREXleXBcy4YB7cfVmW1s
 JGs29dwD6Fizmb6nmtks9rirKhthDMyWvppTG3tHMp4Mb3oXEvxVnxzOaWR4BiS1+2Ai
 Ms7UfSQFw+FXML5gHqOcFonRRH8q0T8KqNwNlfsmYEs5IriSM1Q9bq9RWE9Hwov0itDo
 uOGsIxVf0Vhhx9S5RJSBVDbP9dwX3drBoRHNyuxnqV7CJUxnf8AMqy/P/FWD5edWzfTK
 p//6TG5zvA0bE4357HedAduhvxb5+n0d95jMF2H9jQz4fLdU8NlV2HukbZ9/F8kDRefK
 vp+g==
X-Gm-Message-State: AOJu0YzrwJ+JVBhpKdH4GLCOHIjmuM77T3oDgFWPHLnsqhZ7VBX3tv8Z
 RC/PpuEVbiVODhhn3oOu19KSAEbN6NQVLg3Jy3+5Nuk7GeAwcZ1YaOXUYdPZ2xIEro5PoquMvHN
 pExqWwdY=
X-Gm-Gg: ASbGncuMM/e/horQpLPFEt1BflQ/yBuFSk8IaUe6BS5PzyJslo/3bYHpMlwmCcNDImI
 88BSn7Wh9wTz/F0r7EUF3JwSJyEn/Ed88+vGrlXkgCgyCls5+9kd+GARkDaWAnUPTe4fYym1Dsm
 3qQDY10rY60b79GGS+ldofBQsRh1h8jARawOMOP79ToAdB3Ro2DgpccNwIiRk36wH9Z3cxcQyxc
 61+sMaJDkKyQJgr/IYIkGfSY8b/0UisnFAR1uyjYVcQ7+xnnJRdK8QQobBKkX4D1NjtXK+ZBxBQ
 4JHbasvOJk+XZdOEqtbPbwA/di6bsy9AZkVP5igC7QbbNQ+810VRhyeeLemvID5AJEaezoO6WAF
 l
X-Google-Smtp-Source: AGHT+IGwzlWScb+PX06qplAqKrbQpL/HWUvLZSqvV8qVhQiQVG8BwS2EAlkGyL9WN55pk7m69XQJeA==
X-Received: by 2002:a9d:578d:0:b0:73b:1efa:5f40 with SMTP id
 46e09a7af769-73ce3841a5cmr481695a34.10.1751995009227; 
 Tue, 08 Jul 2025 10:16:49 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ec53:8290:86a1:aa7c])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-73c9f7352b1sm2058138a34.6.2025.07.08.10.16.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jul 2025 10:16:48 -0700 (PDT)
Date: Tue, 8 Jul 2025 12:16:44 -0500
From: Corey Minyard <corey@minyard.net>
To: Colin Ian King <colin.i.king@gmail.com>
Message-ID: <aG1SfFoqU2pB2_wo@mail.minyard.net>
References: <20250708151805.1893858-1-colin.i.king@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250708151805.1893858-1-colin.i.king@gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jul 08, 2025 at 04:18:05PM +0100,
 Colin Ian King wrote:
 > The variable 'type' is assigned the value SI_INVALID which is zero > and
 later checks of 'type' is non-zero (which is always false). T [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.160.170 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.170 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uZCRb-0001qO-7u
Subject: Re: [Openipmi-developer] [PATCH][next] char: ipmi: remove redundant
 variable 'type' and check
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jul 08, 2025 at 04:18:05PM +0100, Colin Ian King wrote:
> The variable 'type' is assigned the value SI_INVALID which is zero
> and later checks of 'type' is non-zero (which is always false). The
> variable is not referenced anywhere else, so it is redundant and
> so is the check, so remove these.

Leftover stuff from previous changes.  It's in my queue, thank you.

-corey

> 
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index bb42dfe1c6a8..8b5524069c15 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -2108,7 +2108,6 @@ static bool __init ipmi_smi_info_same(struct smi_info *e1, struct smi_info *e2)
>  static int __init init_ipmi_si(void)
>  {
>  	struct smi_info *e, *e2;
> -	enum ipmi_addr_src type = SI_INVALID;
>  
>  	if (initialized)
>  		return 0;
> @@ -2190,9 +2189,6 @@ static int __init init_ipmi_si(void)
>  	initialized = true;
>  	mutex_unlock(&smi_infos_lock);
>  
> -	if (type)
> -		return 0;
> -
>  	mutex_lock(&smi_infos_lock);
>  	if (unload_when_empty && list_empty(&smi_infos)) {
>  		mutex_unlock(&smi_infos_lock);
> -- 
> 2.50.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
