Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0714BAC6
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jun 2019 16:08:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hdbG1-0002iY-II; Wed, 19 Jun 2019 14:08:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hdbG0-0002iC-7D
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jun 2019 14:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pAiH03kncavoXyLc1Eknk+svRY2+Ge1NcF9vyuUm92A=; b=ISy0RdFcRZikrwwUSTyYG5EjwW
 DjjyuOTWgU2ESscgYjM46SvYLnRrZIZTH+Ek4QGT3LoNI8YO6Z5P+IKRp9W7KFkyht83mHPX8XhJq
 Nm6VDXBMCsx4WEuO6m5ZCtnKpolxKhU9E04BYK9vnReW9jwqWmTaRPuGzyozhUscDfws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pAiH03kncavoXyLc1Eknk+svRY2+Ge1NcF9vyuUm92A=; b=UZePXMoUBuj9D+LSsVj+1X7PEG
 kL9vzeQcQoqo7GPVRpv+ZECzhUH2cSh//kHBz7py2PYyisplHHyEGnhgBR+FKooIFLm5GtSAXjIeK
 iq+qqIyzSaZ07fkV4aSOdS7GH6Np6GqxBNKoJ7Z0HDn5kV1de+zp2tLVCo2ica4fB4mI=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hdbFy-00HWtV-Sx
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jun 2019 14:08:12 +0000
Received: by mail-ot1-f65.google.com with SMTP id n5so19449250otk.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 Jun 2019 07:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pAiH03kncavoXyLc1Eknk+svRY2+Ge1NcF9vyuUm92A=;
 b=dpgCYgV+kWHJKNjqwnayFjgikgytQOekff4vmPGqKiXN9ziupaPpZj6+0HUvI9TcUk
 1jdifpAXy7T1+b/VH4nikcXUu7/DjT7ivqggirJN9Cl36mrTpDNqeoin3rh25NztOjqB
 sZCONy61pZiDv5Uf5dsX3sQsh53jkRS+h3c68ozprkjrOskso+Ctf6mog9okrbvhpkGs
 Q9qelni5rGHgJwE3BCdFfzcooS3IxqrlXXJtPlBYwoo+DQ+Im23UXz1HYimuDnknmxGd
 akuFghcS3V/1P+rsMjIdSCd0QfSNCnj3pkvUVBb1fVIUREhHGZAdrJjLNnKhg8+Ve8KX
 9Lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=pAiH03kncavoXyLc1Eknk+svRY2+Ge1NcF9vyuUm92A=;
 b=N23SmY6nP+ln4RzhbMiewEHydH0aC96U6YU6J2eLL5yUGJgFA9QqOQuq5p2RgtQ1mH
 0AfBewP9RBz+i/PQCAkMxTO8GEgyQsuE6bl8T3LGESxdyn6lBKo7CLzRztihgGwf2pmh
 ZlyqaehLo+Kyxadbaw/QVDbJWEp5A702SnCmH468OXFZ3FnQFnSllLr4fnXdnmggv6uO
 OYxpuy7VS/ej70SX2d1EDmnOFT2YrPHGG12PSDv9nuNUi1+wDqf41RfEJtmdnxSXYkzs
 zMe04i9frjYdNHgRQkfShe0MOrk2iZ1+rzQvFLaIuTdTLGPoC73fl9KLHSTq1nNByhLd
 RvEw==
X-Gm-Message-State: APjAAAUlCKagjmu/bZN+CDAGCr7ekptfEzq+5Li4LGhKt1RrUwju6NVW
 bxJSGb+hai6SQwlBavaPog==
X-Google-Smtp-Source: APXvYqxpYFHJG2nhLsugZY7xZIOIvhW0nXQTNOsL8SUKG9gxcyHsUg0YhQr++tfaOBQauJN45wQZxw==
X-Received: by 2002:a9d:6e93:: with SMTP id a19mr6113364otr.216.1560953284891; 
 Wed, 19 Jun 2019 07:08:04 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id w17sm6834733oia.24.2019.06.19.07.08.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 07:08:04 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:5546:341d:943c:c2a3])
 by serve.minyard.net (Postfix) with ESMTPSA id E51B31800CE;
 Wed, 19 Jun 2019 14:08:03 +0000 (UTC)
Date: Wed, 19 Jun 2019 09:08:02 -0500
From: Corey Minyard <minyard@acm.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20190619140802.GB7168@minyard.net>
References: <20190619125045.918700-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619125045.918700-1-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hdbFy-00HWtV-Sx
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: don't allocate
 i2c_client on stack
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
Cc: Corey Minyard <cminyard@mvista.com>, vadimp@mellanox.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jun 19, 2019 at 02:50:34PM +0200, Arnd Bergmann wrote:
> The i2c_client structure can be fairly large, which leads to
> a warning about possible kernel stack overflow in some
> configurations:
> 
> drivers/char/ipmi/ipmb_dev_int.c:115:16: error: stack frame size of 1032 bytes in function 'ipmb_write' [-Werror,-Wframe-larger-than=]
> 
> There is no real reason to even declare an i2c_client, as we can simply
> call i2c_smbus_xfer() directly instead of the i2c_smbus_write_block_data()
> wrapper.
> 
> Convert the ipmb_write() to use an open-coded i2c_smbus_write_block_data()
> here, without changing the behavior.
> 
> It seems that there is another problem with this implementation;
> when user space passes a length of more than I2C_SMBUS_BLOCK_MAX
> bytes, all the rest is silently ignored. This should probably be
> addressed in a separate patch, but I don't know what the intended
> behavior is here.
> 
> Fixes: 51bd6f291583 ("Add support for IPMB driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I broke up the line with the call to i2c_smbus_xfer(), which was
longer than 80 characters, but that's it, it's in the IPMI next queue.

Thanks,

-corey

> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 2895abf72e61..c9724f6cf32d 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -117,7 +117,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  {
>  	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
>  	u8 rq_sa, netf_rq_lun, msg_len;
> -	struct i2c_client rq_client;
> +	union i2c_smbus_data data;
>  	u8 msg[MAX_MSG_LEN];
>  	ssize_t ret;
>  
> @@ -138,17 +138,17 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  
>  	/*
>  	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
> -	 * i2c_smbus_write_block_data_local
> +	 * i2c_smbus_xfer
>  	 */
>  	msg_len = msg[IPMB_MSG_LEN_IDX] - SMBUS_MSG_HEADER_LENGTH;
> -
> -	strcpy(rq_client.name, "ipmb_requester");
> -	rq_client.adapter = ipmb_dev->client->adapter;
> -	rq_client.flags = ipmb_dev->client->flags;
> -	rq_client.addr = rq_sa;
> -
> -	ret = i2c_smbus_write_block_data(&rq_client, netf_rq_lun, msg_len,
> -					msg + SMBUS_MSG_IDX_OFFSET);
> +	if (msg_len > I2C_SMBUS_BLOCK_MAX)
> +		msg_len = I2C_SMBUS_BLOCK_MAX;
> +
> +	data.block[0] = msg_len;
> +	memcpy(&data.block[1], msg + SMBUS_MSG_IDX_OFFSET, msg_len);
> +	ret = i2c_smbus_xfer(ipmb_dev->client->adapter, rq_sa, ipmb_dev->client->flags,
> +			     I2C_SMBUS_WRITE, netf_rq_lun,
> +			     I2C_SMBUS_BLOCK_DATA, &data);
>  
>  	return ret ? : count;
>  }
> -- 
> 2.20.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
