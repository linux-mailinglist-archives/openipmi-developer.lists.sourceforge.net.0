Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9DB2F55AA
	for <lists+openipmi-developer@lfdr.de>; Thu, 14 Jan 2021 01:48:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kzqom-0004cn-6K; Thu, 14 Jan 2021 00:48:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kzqoh-0004ca-KS
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Jan 2021 00:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wJkqnPxU1YkrbN+UDOc3D0LJgluiUI3291TLWT8POgk=; b=LslztDGPaTQxMvyAh4pOq+LJTz
 CTvLCoPuhma7DGG1ZOkYh1yVcJ3Ldgkf1iD638/LwR8lvrskpxuZP3qJRFRwdWBy2k5sIMiPXJU/t
 S48TPab5dxmH25eae6w1KUQTMIHsKFQ3sC0AeOe/SfUKBOAN2PUp1HVrDe2qtiYAdr5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wJkqnPxU1YkrbN+UDOc3D0LJgluiUI3291TLWT8POgk=; b=JHFd8GzWz4hVzy9mFR5+J/UUy5
 H+9WOKnAf9p81rKXMvYHaFOO/Mib7yV6DACK9+vatjVhwgy0Onwym3mpC2NzfpVyBGFHyaKJpzl+u
 2KzRi9Z6GW1s8579vxtMy7ODb+jDBOQD4jD52sIcgQM4d4okfy1HMvj3s3UJ9h3lEqN8=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kzqoR-004nd9-7z
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Jan 2021 00:48:45 +0000
Received: by mail-oi1-f180.google.com with SMTP id x13so4235587oic.5
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 13 Jan 2021 16:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=wJkqnPxU1YkrbN+UDOc3D0LJgluiUI3291TLWT8POgk=;
 b=NYFh9Lb78j4D8zgZZ0tAZ2OiqXhnnLUk5JmnqnDUVTFbLftRqSeP2FocvG/t6xEv8g
 M6k+gPmAjrBViPin8szBXaIkx2phSMgb7zm+jfelAphDs/e6PzrhwPSCfj96G+GvejkI
 RhoCQG1UctFkVmduviHaYiTiLZg4ecbVgRTFxu3qoV+6TDI65APzBjAIFNZp53SwYfO3
 A3K6+g/6xx2pBKpgFJ9/+frnRIC9lGhk4oT8thnsSsHJyM4F6IAn4zorxkg5AMvGxN8F
 Gg5nUajbi9187WuGwGsujldpvRZqnf/A4nODxYuIlmKLs7TX51PiBHbxnC7lxchEwyyY
 8IQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=wJkqnPxU1YkrbN+UDOc3D0LJgluiUI3291TLWT8POgk=;
 b=CEYeE6CpJYzPH5MnhyIMPbCdk6HZq9Yf9CdMg7ScdAlG0Sy/1N6tPdQSF5N7h6MDtI
 5f3cu4tSD+GhrUILhgdMtyOal9kZmtnP29aNQErX47bM2D7D1elmpJSbcHJHLCZSd9dk
 cK1Ywhzi7Oko/tacaFkXgmDekKGOTpDZkiVDx/VNNsi5hKbU+SMTk5Mpyb7887oRzSyG
 +dMI2Njw4nNihNcp3NDWo0DZlnGOcHHCwMZJL+5JLMaHw3KMVRtvOAKbwdrupAxZS42s
 JbVKPQH/jYX5xLQkzZiFg/VsVNsTupcMXJg6nP8J9lBS/5fylnWNcaCMP0s9he7Dv81N
 hosQ==
X-Gm-Message-State: AOAM530rzV7iZo5JIH8JnxuQnE5n+LqwpTR1ODEDObq4DPuE4Uw8kOh3
 fGEykMFp8h6DmKg6rEajoQ==
X-Google-Smtp-Source: ABdhPJyYWs3Edb8Tbme/fK5nTTSKL6NfemIK2Bx/YwIlkjyylw+A+Hy9AjLGM1C5h//PfZ/Z39wuSw==
X-Received: by 2002:a54:4583:: with SMTP id z3mr1167805oib.19.1610585305630;
 Wed, 13 Jan 2021 16:48:25 -0800 (PST)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id w9sm769826otq.44.2021.01.13.16.48.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Jan 2021 16:48:24 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:7896:6f6f:4943:c2d6])
 by serve.minyard.net (Postfix) with ESMTPSA id A73BE182235;
 Thu, 14 Jan 2021 00:48:23 +0000 (UTC)
Date: Wed, 13 Jan 2021 18:48:22 -0600
From: Corey Minyard <minyard@acm.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <20210114004822.GY3348@minyard.net>
References: <20210112164130.47895-1-wsa+renesas@sang-engineering.com>
 <20210112164130.47895-4-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210112164130.47895-4-wsa+renesas@sang-engineering.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lkml.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.180 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kzqoR-004nd9-7z
Subject: Re: [Openipmi-developer] [PATCH RFC 3/3] ipmi: remove open coded
 version of SMBus block write
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
Cc: linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 openipmi-developer@lists.sourceforge.net, Vijay Khemka <vijaykhemka@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jan 12, 2021 at 05:41:29PM +0100, Wolfram Sang wrote:
> The block-write function of the core was not used because there was no
> client-struct to use. However, in this case it seems apropriate to use a
> temporary client struct. Because we are answering a request we recieved
> when being a client ourselves. So, convert the code to use a temporary
> client and use the block-write function of the I2C core.

I asked the original authors of this about the change, and apparently is
results in a stack size warning.  Arnd Bergmann ask for it to be changed
from what you are suggesting to what it currently is.  See:

https://www.lkml.org/lkml/2019/6/19/440

So apparently this change will cause compile warnings due to the size of
struct i2c_client.

-corey

> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 21 ++++++++-------------
>  1 file changed, 8 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 382b28f1cf2f..10d89886e5f3 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -137,7 +137,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  {
>  	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
>  	u8 rq_sa, netf_rq_lun, msg_len;
> -	union i2c_smbus_data data;
> +	struct i2c_client temp_client;
>  	u8 msg[MAX_MSG_LEN];
>  	ssize_t ret;
>  
> @@ -160,21 +160,16 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	}
>  
>  	/*
> -	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
> -	 * i2c_smbus_xfer
> +	 * subtract rq_sa and netf_rq_lun from the length of the msg. Fill the
> +	 * temporary client. Note that its use is an exception for IPMI.
>  	 */
>  	msg_len = msg[IPMB_MSG_LEN_IDX] - SMBUS_MSG_HEADER_LENGTH;
> -	if (msg_len > I2C_SMBUS_BLOCK_MAX)
> -		msg_len = I2C_SMBUS_BLOCK_MAX;
> +	memcpy(&temp_client, ipmb_dev->client, sizeof(temp_client));
> +	temp_client.addr = rq_sa;
>  
> -	data.block[0] = msg_len;
> -	memcpy(&data.block[1], msg + SMBUS_MSG_IDX_OFFSET, msg_len);
> -	ret = i2c_smbus_xfer(ipmb_dev->client->adapter, rq_sa,
> -			     ipmb_dev->client->flags,
> -			     I2C_SMBUS_WRITE, netf_rq_lun,
> -			     I2C_SMBUS_BLOCK_DATA, &data);
> -
> -	return ret ? : count;
> +	ret = i2c_smbus_write_block_data(&temp_client, netf_rq_lun, msg_len,
> +					 msg + SMBUS_MSG_IDX_OFFSET);
> +	return ret < 0 ? ret : count;
>  }
>  
>  static __poll_t ipmb_poll(struct file *file, poll_table *wait)
> -- 
> 2.29.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
