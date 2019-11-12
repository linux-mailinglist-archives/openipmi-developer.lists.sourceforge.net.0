Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E216FF8FBB
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 Nov 2019 13:36:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUVP5-0002Fn-IQ; Tue, 12 Nov 2019 12:36:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iUVP3-0002Fd-GX
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 12:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VyuE9R1Zt8unWqsQYiOdffXM+EG4glnnIjYggC8eTEU=; b=mk+CKVKQ5yCVJ75yPdX4trjJuQ
 KsmUR4Vj/fa7a/mf11vnpdBBjnxwsS7HEbDAFYU/b5X4+ZDbPxTp/DzxM7Q0glIGGLoa+y+N/PTVx
 a4pYbSjQYXBRM3voYDWJScL3Ul06EVFP3w5rf/bsoINqAoGOivukeI/yPZmqLnPyd2Dw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VyuE9R1Zt8unWqsQYiOdffXM+EG4glnnIjYggC8eTEU=; b=MdMyCJKw/HFZlQHN1+qYOUv4Iq
 WC+DoC3d+e+0T4p9dlfVkPa4352cXFCVNGZM2+bxml5ywLxDyEvOrPu5YgUWKaaeHzngz2bbx9beP
 YrrTlNtJogk0BLeyNVf7JfV0VQE8olqMrCuksGBzrH/Vmqhoc+a7Www1fKTeYsnFiqzo=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iUVP1-00GkPY-BI
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 12:36:13 +0000
Received: by mail-oi1-f194.google.com with SMTP id l202so14629295oig.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Nov 2019 04:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VyuE9R1Zt8unWqsQYiOdffXM+EG4glnnIjYggC8eTEU=;
 b=Ap5qQJLCwOnu9WaClYB8g/Q1afEqOIjnsLLeX4YKaPAHPvdg06LmhwoD/t+F7c6a7A
 kUbQbSq3g99S+2xvZjizsMXAbY8rWjRAHWA/dlIAA1tqcRTdkPA2Zi8z0ZIIji/G0aDb
 Yv7GenVSZ3COOocISD214Gglk7dxKnU75NmyPmBbZ8nJktJehxBgEJzVQ2bJ12WPfBfl
 d59xGFIDSVOcHaDMAak2raOsnWT7LXtTA19FmxIovxUeO7yQoe5pRxz50We+Rp27L/Ux
 zY7AJG3vN7Dta7oh3DUK3itcAVfRL3FuOvBSQuDZz8CNGf1hbQnhlva6q87SDrCIGy+L
 TqNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=VyuE9R1Zt8unWqsQYiOdffXM+EG4glnnIjYggC8eTEU=;
 b=geu2bmoEV99eqE0oiZnvPnjWc4yxFTfmcKXxqaqjRj5X/yy5YNT+BZqivN/S9skC5m
 dch460pzoOWLPNMFSgRSEh8SrptGdLHrNFbb7FwN8nzNBtRyeeqo0/gEdwa7IG1EfH2y
 21el4eQ79uJ9YZmzlwupvkwVuNm1bECv7DueainDffomNjfHtK9SQd0rbQyDK4nDVA6w
 /XwGW1yet/uiePHAdYGCPvwUrsqC66laZb9N3+F8JPzSCFFgdAk+P77oPJDQf13Va/ip
 E60CL96rM6xZutlFLeSuUYOve59rtWIMbDFFzOCbkSfcw5inMYhwpT8YBS8CexbY2CMf
 eqLA==
X-Gm-Message-State: APjAAAU+9l2OdXqW4nx+E9mJDgeoTMQ647n5Wgi9Zyizbw7gYU36SK4y
 WoKSGllvSJCgXS+kJXXEAg==
X-Google-Smtp-Source: APXvYqwvHqp0DJEHcQBsvLeHESCHlfxJvRpyP9XdBImq8kFvgUt0egV647ozlcxYXSXHzNjp4tOoFw==
X-Received: by 2002:a05:6808:ab1:: with SMTP id
 r17mr3574728oij.111.1573562164874; 
 Tue, 12 Nov 2019 04:36:04 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id 18sm3921292oip.57.2019.11.12.04.36.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 04:36:04 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 85168180046;
 Tue, 12 Nov 2019 12:36:03 +0000 (UTC)
Date: Tue, 12 Nov 2019 06:36:02 -0600
From: Corey Minyard <minyard@acm.org>
To: Vijay Khemka <vijaykhemka@fb.com>
Message-ID: <20191112123602.GD2882@minyard.net>
References: <20191112023610.3644314-1-vijaykhemka@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112023610.3644314-1-vijaykhemka@fb.com>
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
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iUVP1-00GkPY-BI
Subject: Re: [Openipmi-developer] [PATCH 1/2] drivers: ipmi: Support raw i2c
 packet in IPMB
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

On Mon, Nov 11, 2019 at 06:36:09PM -0800, Vijay Khemka wrote:
> Many IPMB devices doesn't support smbus protocol and current driver
> support only smbus devices. So added support for raw i2c packets.

I haven't reviewed this, really, because I have a more general
concern...

Is it possible to not do this with a config item?  Can you add something
to the device tree and/or via an ioctl to make this dynamically
configurable?  That's more flexible (it can support mixed devices) and
is friendlier to users (don't have to get the config right).

Config items for adding new functionality are generally ok.  Config
items for choosing between two mutually exclusive choices are
generally not.

-corey

> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> ---
>  drivers/char/ipmi/Kconfig        |  6 ++++++
>  drivers/char/ipmi/ipmb_dev_int.c | 30 ++++++++++++++++++++++++++++++
>  2 files changed, 36 insertions(+)
> 
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> index a9cfe4c05e64..e5268443b478 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -139,3 +139,9 @@ config IPMB_DEVICE_INTERFACE
>  	  Provides a driver for a device (Satellite MC) to
>  	  receive requests and send responses back to the BMC via
>  	  the IPMB interface. This module requires I2C support.
> +
> +config IPMB_SMBUS_DISABLE
> +	bool 'Disable SMBUS protocol for sending packet to IPMB device'
> +	depends on IPMB_DEVICE_INTERFACE
> +	help
> +	  provides functionality of sending raw i2c packets to IPMB device.
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index ae3bfba27526..2419b9a928b2 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -118,6 +118,10 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
>  	u8 rq_sa, netf_rq_lun, msg_len;
>  	union i2c_smbus_data data;
> +#ifdef CONFIG_IPMB_SMBUS_DISABLE
> +	unsigned char *i2c_buf;
> +	struct i2c_msg i2c_msg;
> +#endif
>  	u8 msg[MAX_MSG_LEN];
>  	ssize_t ret;
>  
> @@ -133,6 +137,31 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
>  	netf_rq_lun = msg[NETFN_LUN_IDX];
>  
> +#ifdef CONFIG_IPMB_SMBUS_DISABLE
> +	/*
> +	 * subtract 1 byte (rq_sa) from the length of the msg passed to
> +	 * raw i2c_transfer
> +	 */
> +	msg_len = msg[IPMB_MSG_LEN_IDX] - 1;
> +
> +	i2c_buf = kzalloc(msg_len, GFP_KERNEL);
> +	if (!i2c_buf)
> +		return -EFAULT;
> +
> +	/* Copy message to buffer except first 2 bytes (length and address) */
> +	memcpy(i2c_buf, msg+2, msg_len);
> +
> +	i2c_msg.addr = rq_sa;
> +	i2c_msg.flags = ipmb_dev->client->flags &
> +			(I2C_M_TEN | I2C_CLIENT_PEC | I2C_CLIENT_SCCB);
> +	i2c_msg.len = msg_len;
> +	i2c_msg.buf = i2c_buf;
> +
> +	ret = i2c_transfer(ipmb_dev->client->adapter, &i2c_msg, 1);
> +	kfree(i2c_buf);
> +
> +	return (ret == 1) ? count : ret;
> +#else
>  	/*
>  	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
>  	 * i2c_smbus_xfer
> @@ -149,6 +178,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  			     I2C_SMBUS_BLOCK_DATA, &data);
>  
>  	return ret ? : count;
> +#endif
>  }
>  
>  static unsigned int ipmb_poll(struct file *file, poll_table *wait)
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
