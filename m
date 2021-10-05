Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB51A422CC2
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 17:40:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXmYp-0000Qs-Qr; Tue, 05 Oct 2021 15:40:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mXmYg-0000Qg-VL
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 15:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5QktpwidiajSgJvIim8VKPelrfPrxs7aTCcg3SgMOnQ=; b=hRrNOVhtScrOH4h6Nka7mmw1fE
 9bpHfA3Y/qqeCJ47UzaYj6AMMLgtK65Wcja1wlLyCgrRmzTsJ7GGxgThLStmFkAonohEqPlsj58rJ
 GHt13D5vxXDUIcQvs42yyfqRuL/JbMH3l2piNFf1PXB3OjnGTynW/oBUUnRKdunRHAi0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5QktpwidiajSgJvIim8VKPelrfPrxs7aTCcg3SgMOnQ=; b=Q7a4n/cMr/QQ98LrdkNNTl+AbL
 xuBhxt4gJb5ljq9l5POfGSnwDGAm9Lve+WJ1PiY+k4wii6Iy9soXhAHeRPpYB/BgIKCqRGjU2wGGw
 GOpXyM+X1UMBurFF2cZzOm8PSK0/PHzHjyYLbcWxgvJqD9bLPdDqRkpXP9Sq8mdjKN3k=;
Received: from mail-oo1-f53.google.com ([209.85.161.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXmYa-006tqq-6H
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 15:40:43 +0000
Received: by mail-oo1-f53.google.com with SMTP id
 t17-20020a4ac891000000b002b612d6d5e9so5842387ooq.10
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 05 Oct 2021 08:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=5QktpwidiajSgJvIim8VKPelrfPrxs7aTCcg3SgMOnQ=;
 b=LrJydlGqf2IRWbCkEuUKMLD9qxKoltfdqfE4dgB/X732p4nit+b4w157mj+ialGptg
 cCCdKSMuHXHBWYskXuKDs9Uut4xCe7CFE5Z8FvgY3u6wNIClzHkn3vf6I0bz71EhoOGh
 PHcHmP1CMQMhSg6xVG2vxqqzjc5scRnD1m1ic4xtkXtecYecJuULGD6qWue4CLgqdXbU
 JWpupOpwyflNReq2Ac622+QH1Whqi9kncjtlRCRSzCifgymWQujIF4b3EfKFN9k0nwlx
 JPtmDkMHVKIvzkWcTAnAO7jAgUTZTO1IppGOtkAaGopor6lP+8zVyRYxfrgdqeEL/UK4
 dlTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=5QktpwidiajSgJvIim8VKPelrfPrxs7aTCcg3SgMOnQ=;
 b=u6ZFGiqER0uzJyb/W27ZROrwprm+tfboiQkqtjOiXyM4GfzcEigETwbP/sS5ytpgNh
 nfINIg+ENzkh0fUx+EeDEQc+I6PFpNTiamljKhpVnIiIz5XFyteqn0kgCdULwpXp0nbP
 G+AClozsoj3Um428jSbsoVyPELFeduQYQca5GjSAmPLQOAxG5CTB9xvTUa17rH24GRrU
 c5h/1D2nPQZDvZS9ooeJeca9EgFTgBhTjWQf7oDIzo9bGyKDvR1BPfGC+TS5CIIZpBXq
 La+cFUHQVF0XVmC2cS7GVRez/86Vq3LT64rqGAP9ssbMHExvylkjLFrta4unK/hkQo+h
 0PsQ==
X-Gm-Message-State: AOAM532t7J/Wxn8OqZUgFqOwaN7NsgcyMsLCo9/3pWMTmzMdpcasiftn
 hW4a2x8icUgQTrxHGPiPlQ==
X-Google-Smtp-Source: ABdhPJzHlCKXoqun8+eMsIBoGBDZwo9BLOIQP/FgDYKi9BIHYuRSRjpt7qabwEBqbV9m6/FNDHKXCg==
X-Received: by 2002:a4a:e292:: with SMTP id k18mr13915115oot.80.1633448434304; 
 Tue, 05 Oct 2021 08:40:34 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id e2sm3428597ooh.40.2021.10.05.08.40.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 08:40:33 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1ce5:3fb4:8fe9:30d1])
 by serve.minyard.net (Postfix) with ESMTPSA id F22D2180053;
 Tue,  5 Oct 2021 15:40:32 +0000 (UTC)
Date: Tue, 5 Oct 2021 10:40:31 -0500
From: Corey Minyard <minyard@acm.org>
To: Colin King <colin.king@canonical.com>
Message-ID: <20211005154031.GD5381@minyard.net>
References: <20211005151611.305383-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005151611.305383-1-colin.king@canonical.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 05, 2021 at 04:16:11PM +0100, Colin King wrote:
 > From: Colin Ian King <colin.king@canonical.com> > > There is an off-by-one
 bounds check on the rcvlen causing a potential > out of bounds [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXmYa-006tqq-6H
Subject: Re: [Openipmi-developer] [PATCH][next] ipmi: ipmb: Fix off-by-one
 size check on rcvlen
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 05, 2021 at 04:16:11PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is an off-by-one bounds check on the rcvlen causing a potential
> out of bounds write on iidev->rcvmsg. Fix this by using the >= operator
> on the bounds check rather than the > operator.

Got it, thanks.

-corey

> 
> Addresses-Coverity: ("Out-of-bounds write")
> Fixes: 0ba0c3c5d1c1 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/char/ipmi/ipmi_ipmb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
> index b10a1fd9c563..77ebec4ed28e 100644
> --- a/drivers/char/ipmi/ipmi_ipmb.c
> +++ b/drivers/char/ipmi/ipmi_ipmb.c
> @@ -192,7 +192,7 @@ static int ipmi_ipmb_slave_cb(struct i2c_client *client,
>  		break;
>  
>  	case I2C_SLAVE_WRITE_RECEIVED:
> -		if (iidev->rcvlen > sizeof(iidev->rcvmsg))
> +		if (iidev->rcvlen >= sizeof(iidev->rcvmsg))
>  			iidev->overrun = true;
>  		else
>  			iidev->rcvmsg[iidev->rcvlen++] = *val;
> -- 
> 2.32.0
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
