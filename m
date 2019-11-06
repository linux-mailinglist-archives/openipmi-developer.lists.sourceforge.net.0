Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C87CF0B4A
	for <lists+openipmi-developer@lfdr.de>; Wed,  6 Nov 2019 01:53:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iS9Zy-0004gV-SZ; Wed, 06 Nov 2019 00:53:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iS9Zx-0004gH-DJ
 for openipmi-developer@lists.sourceforge.net; Wed, 06 Nov 2019 00:53:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P9Pg0JQBq9olWzIox809pWVr9m3m9tTHnVzraba7SzM=; b=V5Iir55KfwJrtI/RJKdkCptfz/
 tZiVtlAynCOl2/+thYe91TyVq5gm8wialGOt1D62jXphjJEjnuHzQeyUp6Pxj/WLq2Ba10J54XF08
 3IOG0C3x7PCvh55jH9RhYViBsXFWgAgAaSj6dQ5Ae/9j9MjzJXhsbJdAx8MV0eYOKu2c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P9Pg0JQBq9olWzIox809pWVr9m3m9tTHnVzraba7SzM=; b=M344I4Iz3mpBYBNadPrHGzn2Or
 bl4CdfiLihidNdBQRmDFiEZdadSGNvj111vAPbEMSharLtSavv4pVZsvVCbIia2b2pT7CcrIAtDs6
 9LWasF/W9AKpbS47BYkrZ/b8sn95wu8X9mpsHclTKsmeVEkyz18XNG+HojTZ6+lw+LvE=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iS9Zv-001WAo-Fr
 for openipmi-developer@lists.sourceforge.net; Wed, 06 Nov 2019 00:53:45 +0000
Received: by mail-oi1-f194.google.com with SMTP id e9so15527949oif.8
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 05 Nov 2019 16:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P9Pg0JQBq9olWzIox809pWVr9m3m9tTHnVzraba7SzM=;
 b=lW8QRsc5AkkZwfN0feDJmRYBr3aYw7pQal8SFSlGBYYB5pyPFlopEm3/fY102S85OD
 +GWLcgmMtSMJV+7e1b1kHUpvmZQSyGVCJhYvC1KfFxkcd0V7vZKQUjGEzoySz94SNvi+
 QjCHudKIe5fbXdlgnze8ffVrk8Kg/5tpVZuaywZV+uSdPNEHevH78VeZt5lYrEWYCO6U
 cMCH0DjXBXYf8u0XGgjKEbbxEmYRI9JdfUYlkFxuCqFN1pXZ5YxDlvyuZ1mQMg1KY2m4
 hC7Cq+jZvnwOXPVb927XxC86sRxXLQmgAEGEnBbKBhsuvffUUtRe8yEezM5ua+HdcEkZ
 +s+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=P9Pg0JQBq9olWzIox809pWVr9m3m9tTHnVzraba7SzM=;
 b=eXplcrwCTORVjUqR+bIL0yB234I68MNwDKGjLP91ORP4mOaxe8TdXYT0/TqJPnEBoN
 rnvgqny8kr8LS80/tcbQ4jHNaRRlba5whLElotJeHBEoMaT0SUCu81M43NInK1rdxein
 D24q11n/izMmQkuf8172VWTO2M7pGFgHHwo2R0JLTGXEnR/UPaHuO7MzVAjIXzM9/tFD
 5l5HxX/eyBGtLrIGV/4uO3ljE3WEHyy1+y83H3g4qLegQcRWryJUdxgvF29dm+tBq0jf
 f/FJBNru5plymgTg6imhYFZ8LyR/X3hia/U0P//bu3oJA71NUhKaNl3MH1ykt8xlwjYv
 m4vw==
X-Gm-Message-State: APjAAAUquId36IXmBGhnv2GqNA3aTBkSnKw2CbFRgm7/0RjWDqbmmioy
 vWAirfwSfJ2bYke2vvLsuw==
X-Google-Smtp-Source: APXvYqw5BBxvW9KfjRdTCsJ0Opct2+UrH4BnJ/XsbHqv05DiaZYEZmhjOaQY6LKSrI56LdVdFfjZbg==
X-Received: by 2002:aca:3889:: with SMTP id f131mr124947oia.14.1573001615578; 
 Tue, 05 Nov 2019 16:53:35 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id v13sm1308951ota.53.2019.11.05.16.53.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 16:53:34 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id E48E6180044;
 Wed,  6 Nov 2019 00:53:33 +0000 (UTC)
Date: Tue, 5 Nov 2019 18:53:32 -0600
From: Corey Minyard <minyard@acm.org>
To: Vijay Khemka <vijaykhemka@fb.com>
Message-ID: <20191106005332.GA2754@minyard.net>
References: <20191105194732.1521963-1-vijaykhemka@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105194732.1521963-1-vijaykhemka@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fb.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iS9Zv-001WAo-Fr
Subject: Re: [Openipmi-developer] [PATCH] drivers: ipmi: Support for both
 IPMB Req and Resp
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
Cc: cminyard@mvista.com, sdasari@fb.com, linux-aspeed@lists.ozlabs.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Nov 05, 2019 at 11:47:31AM -0800, Vijay Khemka wrote:
> Removed check for request or response in IPMB packets coming from
> device as well as from host. Now it supports both way communication
> to device via IPMB. Both request and response will be passed to
> application.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 29 +----------------------------
>  1 file changed, 1 insertion(+), 28 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 285e0b8f9a97..7201fdb533d8 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -133,9 +133,6 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
>  	netf_rq_lun = msg[NETFN_LUN_IDX];
>  
> -	if (!(netf_rq_lun & NETFN_RSP_BIT_MASK))
> -		return -EINVAL;
> -
>  	/*
>  	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
>  	 * i2c_smbus_xfer
> @@ -203,28 +200,6 @@ static u8 ipmb_verify_checksum1(struct ipmb_dev *ipmb_dev, u8 rs_sa)
>  		ipmb_dev->request.checksum1);
>  }
>  
> -static bool is_ipmb_request(struct ipmb_dev *ipmb_dev, u8 rs_sa)
> -{
> -	if (ipmb_dev->msg_idx >= IPMB_REQUEST_LEN_MIN) {
> -		if (ipmb_verify_checksum1(ipmb_dev, rs_sa))
> -			return false;

You still need to check the message length and checksum, you just need
to ignore the req/resp bit.

-corey

> -
> -		/*
> -		 * Check whether this is an IPMB request or
> -		 * response.
> -		 * The 6 MSB of netfn_rs_lun are dedicated to the netfn
> -		 * while the remaining bits are dedicated to the lun.
> -		 * If the LSB of the netfn is cleared, it is associated
> -		 * with an IPMB request.
> -		 * If the LSB of the netfn is set, it is associated with
> -		 * an IPMB response.
> -		 */
> -		if (!(ipmb_dev->request.netfn_rs_lun & NETFN_RSP_BIT_MASK))
> -			return true;
> -	}
> -	return false;
> -}
> -
>  /*
>   * The IPMB protocol only supports I2C Writes so there is no need
>   * to support I2C_SLAVE_READ* events.
> @@ -273,9 +248,7 @@ static int ipmb_slave_cb(struct i2c_client *client,
>  
>  	case I2C_SLAVE_STOP:
>  		ipmb_dev->request.len = ipmb_dev->msg_idx;
> -
> -		if (is_ipmb_request(ipmb_dev, GET_8BIT_ADDR(client->addr)))
> -			ipmb_handle_request(ipmb_dev);
> +		ipmb_handle_request(ipmb_dev);
>  		break;
>  
>  	default:
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
