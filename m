Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F2EF2F7B
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Nov 2019 14:34:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iShvp-00055S-CV; Thu, 07 Nov 2019 13:34:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iShvn-000553-H2
 for openipmi-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:34:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x+syRc+agoo08pLNzrJjXzWzp/e66MwKC2W+ow4e7bw=; b=ie4sc+H9CabQ7dy3l+0UAjcEel
 O7VNVj1KfngzqJwtvtG87kGVdgwfCbWGcQvYI2YbIk6Nv9xwKAKBMwpbcDAOqWJYt9uL4M/zDUhoy
 zoV6/tElj4WIuPLlTEbHwa9tE5qZ3Q38K6py4IYhUC51CABDN4dVN7WnwbMpMqfd/LQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x+syRc+agoo08pLNzrJjXzWzp/e66MwKC2W+ow4e7bw=; b=FWX4mf0e0qvY4krievPsEqTrxy
 8wydnkSm6M2m9sKvQXR8+ncVwDLgIH53XeftHknRXqKZqRMDomrCVk0MZ0ZNnavzgrG7oZhDmq283
 wlH8pkyTzPPjOGV6BBhNyG+9b4ClzXJA8kUmIMMvQrfmOItyaPCqaq7EEHCI/9euIImc=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iShvl-003lxG-P0
 for openipmi-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:34:35 +0000
Received: by mail-ot1-f65.google.com with SMTP id u13so2028451ote.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Nov 2019 05:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x+syRc+agoo08pLNzrJjXzWzp/e66MwKC2W+ow4e7bw=;
 b=GbfG07kSp5ixMQ4oonu7FLSf/87Uy4yl6Eiho1GtkM5AKVAv2sZ943At2fCDaBDJT2
 MC31nwMYp8r3iNBjuIHdBKTQUuoO5koaiBvy4wRKxMw3HYaXD6iCcpc+tvDw6ZHQGrhE
 U4UzGO6XTkWpl9D0+A2bVxNF//x9tHk1soaBDw2Yy5Ve6paG+Cirj21kY1zQf36xnnXN
 k2wcFx1K9EY8XEVPZ9i3cGxNtz/8wXqnf4IRh/cmzzKFue7CgK4L28JNaD85kBuwJFaz
 m7ECXnoWR9eHAhtMrQ+ykJLy+IW7yp2bs4DlFbFIsI5kITF14/Tfd3UjV9sWWYqiukwr
 2mmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=x+syRc+agoo08pLNzrJjXzWzp/e66MwKC2W+ow4e7bw=;
 b=BHswA6Yzv2+ckA/XB4G3uyi2OQrFt699LtcuqDycxvrOjzIhBrIufmHDT/KHT5cMiR
 CAIO4Ny0Rzit5f110+48ibAelF6FvlZw6M+tNXSfTA8JoNXxHwpMfxOvzQw72LV9I/wv
 O1fHUd9l47eArCBk6sy3H7Qm3U1/RR3WlFjeM32qQ8ts+vz2NmbLyYG7EwMliOPOOSt7
 6GkZmE+6T3YEDv43s0PQUO1ee7KsqpqfX3FPktHcdscNbILcxAKtb1QenL7/G2GDLlso
 I92CZv+AuhP3JqSx9/QIJ6KVCMbrkOYkIPCudCVf6DBZxr6857k3SLqEza8RjFBoNV98
 z35Q==
X-Gm-Message-State: APjAAAUJSTkkaUJEreDOVrQL9fPftR9fW5Q04ktbIU0r1IwNJ/3uG97r
 yn6FFB9hjLA08pSeIt0dIA==
X-Google-Smtp-Source: APXvYqx78JdRY1/hVtPOwuo/shXRgmMvkCD+fJAlFhVerBdkFmI/xeERxi3QZg0O16tnBmjg70TbYA==
X-Received: by 2002:a9d:365:: with SMTP id 92mr3243984otv.9.1573133667411;
 Thu, 07 Nov 2019 05:34:27 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id 9sm620925ois.16.2019.11.07.05.34.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 05:34:26 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 32E62180046;
 Thu,  7 Nov 2019 13:34:26 +0000 (UTC)
Date: Thu, 7 Nov 2019 07:34:25 -0600
From: Corey Minyard <minyard@acm.org>
To: Vijay Khemka <vijaykhemka@fb.com>
Message-ID: <20191107133425.GA10276@minyard.net>
References: <20191106182921.1086795-1-vijaykhemka@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106182921.1086795-1-vijaykhemka@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fb.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iShvl-003lxG-P0
Subject: Re: [Openipmi-developer] [PATCH v2] drivers: ipmi: Support for both
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

On Wed, Nov 06, 2019 at 10:29:21AM -0800, Vijay Khemka wrote:
> Removed check for request or response in IPMB packets coming from
> device as well as from host. Now it supports both way communication
> to device via IPMB. Both request and response will be passed to
> application.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

Thanks, this is in my for-next tree now.  Asnaam, I took your previous
comments as a "Reviewed-by", if that is ok.

-corey

> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 31 +++++++++----------------------
>  1 file changed, 9 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 285e0b8f9a97..ae3bfba27526 100644
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
> @@ -203,25 +200,16 @@ static u8 ipmb_verify_checksum1(struct ipmb_dev *ipmb_dev, u8 rs_sa)
>  		ipmb_dev->request.checksum1);
>  }
>  
> -static bool is_ipmb_request(struct ipmb_dev *ipmb_dev, u8 rs_sa)
> +/*
> + * Verify if message has proper ipmb header with minimum length
> + * and correct checksum byte.
> + */
> +static bool is_ipmb_msg(struct ipmb_dev *ipmb_dev, u8 rs_sa)
>  {
> -	if (ipmb_dev->msg_idx >= IPMB_REQUEST_LEN_MIN) {
> -		if (ipmb_verify_checksum1(ipmb_dev, rs_sa))
> -			return false;
> +	if ((ipmb_dev->msg_idx >= IPMB_REQUEST_LEN_MIN) &&
> +	   (!ipmb_verify_checksum1(ipmb_dev, rs_sa)))
> +		return true;
>  
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
>  	return false;
>  }
>  
> @@ -273,8 +261,7 @@ static int ipmb_slave_cb(struct i2c_client *client,
>  
>  	case I2C_SLAVE_STOP:
>  		ipmb_dev->request.len = ipmb_dev->msg_idx;
> -
> -		if (is_ipmb_request(ipmb_dev, GET_8BIT_ADDR(client->addr)))
> +		if (is_ipmb_msg(ipmb_dev, GET_8BIT_ADDR(client->addr)))
>  			ipmb_handle_request(ipmb_dev);
>  		break;
>  
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
