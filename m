Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE44FC871
	for <lists+openipmi-developer@lfdr.de>; Thu, 14 Nov 2019 15:10:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iVFpf-00010B-VY; Thu, 14 Nov 2019 14:10:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iVFpf-0000zu-6C
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 14:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v1je3uNJ00f2WkFNv22rLfEFKIfE+md5iLEXtfYLkWk=; b=aig8EaZ4hUs4FU3nVuAaseCFye
 BwVGqjRf7lKTtANDp8eAUnZwV0BCgu8voOVIB1nuuWu2hVp/jT06dzt8nHht2lGDVGTegecf7hw1c
 md6Cu58QVvxMvmJQWarPGBhE9wfCT7YdWb9U3gH4fGosVpQZGM2kptbTEOy2GE98WlWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v1je3uNJ00f2WkFNv22rLfEFKIfE+md5iLEXtfYLkWk=; b=F++TgIdi6kvbK0ut84V+Xz3lzJ
 67hM9wamKDnIb22+DKVDLlTRJ0+9ERLLEz6cWSlSMU/VGdurTFI0jdnPSVdBhuh/HN9bdLG6D0N7Y
 duCXXUISiyfhcI5B0NXeuxrszZQzC16WeWgCpEa4G7wtXeWzVZVzSfAby9a/2p4U3krE=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iVFpd-00GaMh-Qb
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 14:10:47 +0000
Received: by mail-oi1-f196.google.com with SMTP id m193so5377314oig.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 14 Nov 2019 06:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v1je3uNJ00f2WkFNv22rLfEFKIfE+md5iLEXtfYLkWk=;
 b=NkriC5pv5OxJLKQlQfa7bt4z31mrVgV8b2bbwrx8NPt0xKnp03rJM5z5HQiBYS/pcb
 pUICmEXJrG/jOttWU/h8kggoBUrl7EfAmPy3xIH5yiv2/RlW0YltsTat4HgyK5q4EONy
 BEHtmL6+9RP3E34ZHS984e34hMxrFO6/zQk4PMJI/nA6n2Ubd3NDobGmEXOSELpGoU7+
 Ta23OBoHQb4hvg9kESOJVZtQa+gaaz7c8VraLmkiC0Md+cmeLzwRACguNsC4Nqp7i6jG
 BvZy7ZDaXsqkb/IKiM3hSOGLV5OQYdjLNJFXfWnuuoDlYB81rKcbWaT+vaA9X5Pm1sWy
 VLzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=v1je3uNJ00f2WkFNv22rLfEFKIfE+md5iLEXtfYLkWk=;
 b=i0c4urQy5guNBIRK85Utjs4F1GXKu5Mr3EE+/S6V8bBK2Zmzjb9m/phh8o1ksPQVDL
 jHkE/3jQ/xHzB4p/Q0caIvzZgZA6pjRMuBZ+Qz/KovUY4mTDXZwtJsggUPsSCipU75BW
 XJpiQHn3O0ok9fTDDvtt38xurbz0c9fGvUt0osISq6p+yuwTsSEjjnzlGHJn/bl94vie
 iFPEqbPlzpMtVmi1dwgslOw/RgRB7Fh6qpgz+de5ftMsEUFpGBlOhH/mD8I0Qxf6qDdk
 3n+P+rB4ka/dXNuytB1D6AjKf3Qnlf7KEjMhmtArxCKy5F7h3Xm4t2bw6i5aSiTt7+Yh
 xQog==
X-Gm-Message-State: APjAAAWRl9Q/fY7ho1EpQKNvndAilyDRscuXzSrV9grdTIfNymI+zWtL
 mJHmJo2RlZrF/3Ubg/NdDg==
X-Google-Smtp-Source: APXvYqwwdPFg9kbfOu8MlVF4OmpC/NFAxBtjdVdCziMJOnb/GeNAiULm5YmBziTFP16OKCKo0TXNkA==
X-Received: by 2002:a05:6808:20f:: with SMTP id
 l15mr3778616oie.39.1573740639585; 
 Thu, 14 Nov 2019 06:10:39 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id i195sm1812611oib.55.2019.11.14.06.10.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 06:10:39 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 8514C180044;
 Thu, 14 Nov 2019 14:10:38 +0000 (UTC)
Date: Thu, 14 Nov 2019 08:10:37 -0600
From: Corey Minyard <minyard@acm.org>
To: Vijay Khemka <vijaykhemka@fb.com>
Message-ID: <20191114141037.GP2882@minyard.net>
References: <20191113234133.3790374-1-vijaykhemka@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113234133.3790374-1-vijaykhemka@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fb.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVFpd-00GaMh-Qb
Subject: Re: [Openipmi-developer] [PATCH v4] drivers: ipmi: Support raw i2c
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

On Wed, Nov 13, 2019 at 03:41:33PM -0800, Vijay Khemka wrote:
> Many IPMB devices doesn't support smbus protocol and current driver
> support only smbus devices. Added support for raw i2c packets.
> 
> User can define i2c-protocol in device tree to use i2c raw transfer.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

With Aasma's response, I am ok with this.

One thing, though.  This is the slave device on the I2C, not the master
device that has the issue, right?  So it's at least theoretically
possible to have one SMBus and one I2C IPMB device on the same master,
right?

For normal I2C, devices are in the device tree and get added to the
kernel device handling.  It looks like that is not being done in your
case.  But really, the "right" way to do this is to have the IPMB slaves
added as Linux devices and address them that way.  I'm not sure this
will ever be a real issue, but if it is, there will be some work to do
to fix it.

-corey

> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index ae3bfba27526..10904bec1de0 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -63,6 +63,7 @@ struct ipmb_dev {
>  	spinlock_t lock;
>  	wait_queue_head_t wait_queue;
>  	struct mutex file_mutex;
> +	bool is_i2c_protocol;
>  };
>  
>  static inline struct ipmb_dev *to_ipmb_dev(struct file *file)
> @@ -112,6 +113,25 @@ static ssize_t ipmb_read(struct file *file, char __user *buf, size_t count,
>  	return ret < 0 ? ret : count;
>  }
>  
> +static int ipmb_i2c_write(struct i2c_client *client, u8 *msg)
> +{
> +	struct i2c_msg i2c_msg;
> +
> +	/*
> +	 * subtract 1 byte (rq_sa) from the length of the msg passed to
> +	 * raw i2c_transfer
> +	 */
> +	i2c_msg.len = msg[IPMB_MSG_LEN_IDX] - 1;
> +
> +	/* Assign message to buffer except first 2 bytes (length and address) */
> +	i2c_msg.buf = msg + 2;
> +
> +	i2c_msg.addr = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
> +	i2c_msg.flags = client->flags & I2C_CLIENT_PEC;
> +
> +	return i2c_transfer(client->adapter, &i2c_msg, 1);
> +}
> +
>  static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  			size_t count, loff_t *ppos)
>  {
> @@ -133,6 +153,12 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
>  	netf_rq_lun = msg[NETFN_LUN_IDX];
>  
> +	/* Check i2c block transfer vs smbus */
> +	if (ipmb_dev->is_i2c_protocol) {
> +		ret = ipmb_i2c_write(ipmb_dev->client, msg);
> +		return (ret == 1) ? count : ret;
> +	}
> +
>  	/*
>  	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
>  	 * i2c_smbus_xfer
> @@ -277,6 +303,7 @@ static int ipmb_probe(struct i2c_client *client,
>  			const struct i2c_device_id *id)
>  {
>  	struct ipmb_dev *ipmb_dev;
> +	struct device_node *np;
>  	int ret;
>  
>  	ipmb_dev = devm_kzalloc(&client->dev, sizeof(*ipmb_dev),
> @@ -302,6 +329,11 @@ static int ipmb_probe(struct i2c_client *client,
>  	if (ret)
>  		return ret;
>  
> +	/* Check if i2c block xmit needs to use instead of smbus */
> +	np = client->dev.of_node;
> +	if (np && of_get_property(np, "i2c-protocol", NULL))
> +		ipmb_dev->is_i2c_protocol = true;
> +
>  	ipmb_dev->client = client;
>  	i2c_set_clientdata(client, ipmb_dev);
>  	ret = i2c_slave_register(client, ipmb_slave_cb);
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
