Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAB9E07D9
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Oct 2019 17:49:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iMwPW-0006CT-0G; Tue, 22 Oct 2019 15:49:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iMwPU-0006CL-N3
 for openipmi-developer@lists.sourceforge.net; Tue, 22 Oct 2019 15:49:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fW5P1wesLCHZQObDiW106qVWcGlV18+kX2FDeNS0bDU=; b=Ko9Ghn7qJ1GBq7OOYr5N1MIcmD
 9v6CQ2kerVVnEFy0FCJqzgcuYPLcoHiD6Jlb0VcpYYkmB3MYc4DIr7jc+BUB7ObX5ngKFhnrWfcrM
 xrGs1oH2TeR+13LYObLvX5yD3hwcduYcNQIpnw03BOTJDhq7JM7JQ7boV9f0S6f/qG68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fW5P1wesLCHZQObDiW106qVWcGlV18+kX2FDeNS0bDU=; b=X3f+O7ntL/rwnK+VanIYr9BLGh
 jTtiJMEUZwdTf7UeMGqAt4W78QKr9mtHd3xDQwmSYtwalslcOOt+ZDMEZQgFPYf8CU0nApJ9Ih6Fq
 MTFS8mqLVOilPaoRTlBCGrK9qhEM1b3vMxPZlQGpnMm+RifUtY3HpYtYcRcBee/U742I=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iMwPR-00GrVT-Cz
 for openipmi-developer@lists.sourceforge.net; Tue, 22 Oct 2019 15:49:24 +0000
Received: by mail-oi1-f196.google.com with SMTP id s71so1732620oih.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 22 Oct 2019 08:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fW5P1wesLCHZQObDiW106qVWcGlV18+kX2FDeNS0bDU=;
 b=TRPruYNbISBS+7rIpRO5ztgbH0jMfci9ZE0JHzU7QzNPDCtFBXmWOUOWwc3VKUBX5V
 yg0Jtrd05x32ud6NRmSGLXWYNdee8wae9FiYboOYE5viUmmRktj16zBdoSQBLjT9+5vp
 1m4Vdph2FcVAR52D/MlxUceq0dz1slR8B9PGkxJnQEd7UFLkT3yDWOO79y68Rb1HBoHk
 oqoaltanJskEcPWQ3rVd1n5O7N4UTJZgLN9HIAWLhXiDh2pTrL6cOHQGDb+fs4eY2Gmi
 VM9m96fmVLqOkr7d+TY3XRt1T0xYm8GrKneHolADTDd0PaKgzc10t4e1evq+lwAEoqh9
 YDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=fW5P1wesLCHZQObDiW106qVWcGlV18+kX2FDeNS0bDU=;
 b=j90KxT4zMEu/p8X92cBzoLedRD6YskRbqB2A/rEvlh79gCZxCj49diaXDQLbjTh1/e
 dh+tWp2T4ZE58bARtqzmAOwAnVODtnMPbaiKC1ufk+g1bSC1d5hrgRjsfpbi3fXyLbSF
 AaEjqYTOO4Oa2eyj/OKPXxIP2e1HoTtonyZztGSzU5w31oPm6/vNX0VaRAsf55Z8DOj6
 cSMzJA/OFaJrGTk9NNnr4fFFgYc6+nxITuxxkxeu/+bk0ZRnJ2KFH/Yl6/phR1SEjaez
 VWIRYHEE8h+ikeeqsjA+tRrjg6wyz0XTtGT9dl+hFwE7tKw6UtONo1TX8jU4Ez8LIOpx
 Md6g==
X-Gm-Message-State: APjAAAU32IHiVz19FFAFXQUVD1yX/zAd/Oc38o14KA74NFtRcmsynO5r
 uSk0Flz2c07iX4dgdI6+QQ==
X-Google-Smtp-Source: APXvYqzbd5bU2MoNBaWevjpW/u6WPXzyk3+hUZtvzTptH1YvNf6I4IJfw3gYMcRxx7zRykXzG8Oohg==
X-Received: by 2002:aca:dd07:: with SMTP id u7mr3706712oig.106.1571759355176; 
 Tue, 22 Oct 2019 08:49:15 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id z10sm5423031ote.54.2019.10.22.08.49.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 08:49:14 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id DACE2180044;
 Tue, 22 Oct 2019 15:49:13 +0000 (UTC)
Date: Tue, 22 Oct 2019 10:49:12 -0500
From: Corey Minyard <minyard@acm.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Message-ID: <20191022154912.GT14232@t560>
References: <20191021200649.1511-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021200649.1511-1-navid.emamdoost@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pdev.name]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iMwPR-00GrVT-Cz
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix memory leak in
 __ipmi_bmc_register
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, emamd001@umn.edu, smccaman@umn.edu,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Oct 21, 2019 at 03:06:48PM -0500, Navid Emamdoost wrote:
> In the impelementation of __ipmi_bmc_register() the allocated memory for
> bmc should be released in case ida_simple_get() fails.

Thanks, queued for next merge window.

-corey

> 
> Fixes: 68e7e50f195f ("ipmi: Don't use BMC product/dev ids in the BMC name")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 2aab80e19ae0..e4928ed46396 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3031,8 +3031,11 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
>  		bmc->pdev.name = "ipmi_bmc";
>  
>  		rv = ida_simple_get(&ipmi_bmc_ida, 0, 0, GFP_KERNEL);
> -		if (rv < 0)
> +		if (rv < 0) {
> +			kfree(bmc);
>  			goto out;
> +		}
> +
>  		bmc->pdev.dev.driver = &ipmidriver.driver;
>  		bmc->pdev.id = rv;
>  		bmc->pdev.dev.release = release_bmc_device;
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
