Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B826328261
	for <lists+openipmi-developer@lfdr.de>; Mon,  1 Mar 2021 16:24:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lGkPU-0001wY-EO; Mon, 01 Mar 2021 15:24:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lGkOt-0001qC-V0
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Mar 2021 15:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zLRiotorNgODtDczOZ0iNSSFs1Gejj1kj1CcN2zNn84=; b=aWNnPcmzfUQvEKKCSxfxIFBJj0
 0QoRBWPg9M50bKLBIQ781/6bZc/ayHora8zCjdNniKdWlPXxzkGzWANJWw/xoJATCSjeUcFviOuLU
 tS21xK9fhh353wB0lvFEBC8oTMn3LAy0ORJEs7rGPSdOHisL7cgtqR2Dt1JktFitGsIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zLRiotorNgODtDczOZ0iNSSFs1Gejj1kj1CcN2zNn84=; b=Dq1/gvHwf39EWRmif/SB2nGijg
 SbuZKzp1Q8wtkgFPt92BTYIHeDNiE93y8nQQJhKm7p7ZkgeoZ6IDU+/9WGZP0kc5C30yNy0NaQQnt
 AmA04Lqaa/qmruYUjcwvwgYReM0FvOQ9bPgiLUDcpgi3LkjsGBHsr7w0Uih9/JlT4Nmo=;
Received: from mail-oo1-f42.google.com ([209.85.161.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lGkOp-00A2Rp-1X
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Mar 2021 15:23:59 +0000
Received: by mail-oo1-f42.google.com with SMTP id e17so4029817oow.4
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Mar 2021 07:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=zLRiotorNgODtDczOZ0iNSSFs1Gejj1kj1CcN2zNn84=;
 b=QU73XM3X8IDYcmxx90iCfLY9YxgupK64FI6pigTuAiWDsELid4fNOces4PQkxkxtp8
 wITTnYCRYn3i5/FAnNrKa71eH5CAniuejvYkqKB/qE3stdA1gAjUIl1CsVBPlCC1YFku
 nVvJ0dy5Gm/74z0dpqXi6GgQR2WIvxNEx8SDtfHP3r2upB8wKEtVsHBl9MzXxzpGJhnZ
 qp5YUJ/wgS+WN7fEAmQKKNe0XR7K+hTbW2GNoL7EUDMrY0V1Z/08mPIpadogXcZSfCsO
 TNwQyPkrYkeovB25Uak1A/zZD4okPwAZbPi6fZumtXaG7JTKaRKBN+Qxk5H6A5c96sXE
 dOBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=zLRiotorNgODtDczOZ0iNSSFs1Gejj1kj1CcN2zNn84=;
 b=EhxMlq0TPVDPdOK+FcfsDt7reUOTsrRADphPKs2arTqeDHLCXF4e6v9iYzfiQsJNvM
 zBEnNh87wIVvu5QFIq6dGG7Z79g9O6E6BurmI5uSnN19dw2adDOznkdQyIV6iknL3UBx
 g1GRNp5PZEdawVDUpO4I5LkgCt+6UOoR4nhiCsuGz6m8yEo4A6/xikOHbt5FIqcF1vP0
 K17FIm8m7cVqnBh/z5/KgBWM88bWwUP0HYZ92wveJXBzuU1iC8T8zuYe324PeyToNAa4
 20CSWgRMHl3tlIIq3wDjPUnu81SjEnZHm0GzQdjWk8wgVQ317Mhllevs2qJyx5BnYd6K
 zW/A==
X-Gm-Message-State: AOAM531NmuRlc0w5/R+thLgv4roqmLfOPU4wtzSfUztQrELJBdQQFOhe
 AdlQb6G0Rru/TWppEZm07Q==
X-Google-Smtp-Source: ABdhPJzjTLQqvNd6iK0LOi+tng/XkcMkbFQBe36o8UAsc1lmbxczqYzNQPVMhaGiL7qkXGpv/MjdCA==
X-Received: by 2002:a4a:c706:: with SMTP id n6mr13091254ooq.19.1614612229322; 
 Mon, 01 Mar 2021 07:23:49 -0800 (PST)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id q131sm3141333oic.45.2021.03.01.07.23.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 07:23:48 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:dd2:7224:e6c:fce5])
 by serve.minyard.net (Postfix) with ESMTPSA id 14BBB180059;
 Mon,  1 Mar 2021 15:23:48 +0000 (UTC)
Date: Mon, 1 Mar 2021 09:23:46 -0600
From: Corey Minyard <minyard@acm.org>
To: Liguang Zhang <zhangliguang@linux.alibaba.com>
Message-ID: <20210301152346.GD507977@minyard.net>
References: <20210301140515.18951-1-zhangliguang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301140515.18951-1-zhangliguang@linux.alibaba.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.42 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lGkOp-00A2Rp-1X
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: make ssif_i2c_send()
 void
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

This looks ok, it's queued for 5.12.

Thanks,

-corey

On Mon, Mar 01, 2021 at 10:05:15PM +0800, Liguang Zhang wrote:
> This function actually needs no return value. So remove the unneeded
> check and make it void.
> 
> Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 81 +++++++++--------------------------
>  1 file changed, 20 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 0416b9c9d410..20d5af92966d 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -510,7 +510,7 @@ static int ipmi_ssif_thread(void *data)
>  	return 0;
>  }
>  
> -static int ssif_i2c_send(struct ssif_info *ssif_info,
> +static void ssif_i2c_send(struct ssif_info *ssif_info,
>  			ssif_i2c_done handler,
>  			int read_write, int command,
>  			unsigned char *data, unsigned int size)
> @@ -522,7 +522,6 @@ static int ssif_i2c_send(struct ssif_info *ssif_info,
>  	ssif_info->i2c_data = data;
>  	ssif_info->i2c_size = size;
>  	complete(&ssif_info->wake_thread);
> -	return 0;
>  }
>  
>  
> @@ -531,22 +530,12 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  
>  static void start_get(struct ssif_info *ssif_info)
>  {
> -	int rv;
> -
>  	ssif_info->rtc_us_timer = 0;
>  	ssif_info->multi_pos = 0;
>  
> -	rv = ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
> -			  SSIF_IPMI_RESPONSE,
> -			  ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
> -	if (rv < 0) {
> -		/* request failed, just return the error. */
> -		if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
> -			dev_dbg(&ssif_info->client->dev,
> -				"Error from i2c_non_blocking_op(5)\n");
> -
> -		msg_done_handler(ssif_info, -EIO, NULL, 0);
> -	}
> +	ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
> +		  SSIF_IPMI_RESPONSE,
> +		  ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
>  }
>  
>  static void retry_timeout(struct timer_list *t)
> @@ -620,7 +609,6 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  {
>  	struct ipmi_smi_msg *msg;
>  	unsigned long oflags, *flags;
> -	int rv;
>  
>  	/*
>  	 * We are single-threaded here, so no need for a lock until we
> @@ -666,17 +654,10 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  		ssif_info->multi_len = len;
>  		ssif_info->multi_pos = 1;
>  
> -		rv = ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
> -				  SSIF_IPMI_MULTI_PART_RESPONSE_MIDDLE,
> -				  ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
> -		if (rv < 0) {
> -			if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
> -				dev_dbg(&ssif_info->client->dev,
> -					"Error from i2c_non_blocking_op(1)\n");
> -
> -			result = -EIO;
> -		} else
> -			return;
> +		ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
> +			 SSIF_IPMI_MULTI_PART_RESPONSE_MIDDLE,
> +			 ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
> +		return;
>  	} else if (ssif_info->multi_pos) {
>  		/* Middle of multi-part read.  Start the next transaction. */
>  		int i;
> @@ -738,19 +719,12 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  
>  			ssif_info->multi_pos++;
>  
> -			rv = ssif_i2c_send(ssif_info, msg_done_handler,
> -					   I2C_SMBUS_READ,
> -					   SSIF_IPMI_MULTI_PART_RESPONSE_MIDDLE,
> -					   ssif_info->recv,
> -					   I2C_SMBUS_BLOCK_DATA);
> -			if (rv < 0) {
> -				if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
> -					dev_dbg(&ssif_info->client->dev,
> -						"Error from ssif_i2c_send\n");
> -
> -				result = -EIO;
> -			} else
> -				return;
> +			ssif_i2c_send(ssif_info, msg_done_handler,
> +				  I2C_SMBUS_READ,
> +				  SSIF_IPMI_MULTI_PART_RESPONSE_MIDDLE,
> +				  ssif_info->recv,
> +				  I2C_SMBUS_BLOCK_DATA);
> +			return;
>  		}
>  	}
>  
> @@ -908,8 +882,6 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
>  static void msg_written_handler(struct ssif_info *ssif_info, int result,
>  				unsigned char *data, unsigned int len)
>  {
> -	int rv;
> -
>  	/* We are single-threaded here, so no need for a lock. */
>  	if (result < 0) {
>  		ssif_info->retries_left--;
> @@ -972,18 +944,9 @@ static void msg_written_handler(struct ssif_info *ssif_info, int result,
>  			ssif_info->multi_data = NULL;
>  		}
>  
> -		rv = ssif_i2c_send(ssif_info, msg_written_handler,
> -				   I2C_SMBUS_WRITE, cmd,
> -				   data_to_send, I2C_SMBUS_BLOCK_DATA);
> -		if (rv < 0) {
> -			/* request failed, just return the error. */
> -			ssif_inc_stat(ssif_info, send_errors);
> -
> -			if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
> -				dev_dbg(&ssif_info->client->dev,
> -					"Error from i2c_non_blocking_op(3)\n");
> -			msg_done_handler(ssif_info, -EIO, NULL, 0);
> -		}
> +		ssif_i2c_send(ssif_info, msg_written_handler,
> +			  I2C_SMBUS_WRITE, cmd,
> +			  data_to_send, I2C_SMBUS_BLOCK_DATA);
>  	} else {
>  		/* Ready to request the result. */
>  		unsigned long oflags, *flags;
> @@ -1012,7 +975,6 @@ static void msg_written_handler(struct ssif_info *ssif_info, int result,
>  
>  static int start_resend(struct ssif_info *ssif_info)
>  {
> -	int rv;
>  	int command;
>  
>  	ssif_info->got_alert = false;
> @@ -1034,12 +996,9 @@ static int start_resend(struct ssif_info *ssif_info)
>  		ssif_info->data[0] = ssif_info->data_len;
>  	}
>  
> -	rv = ssif_i2c_send(ssif_info, msg_written_handler, I2C_SMBUS_WRITE,
> -			  command, ssif_info->data, I2C_SMBUS_BLOCK_DATA);
> -	if (rv && (ssif_info->ssif_debug & SSIF_DEBUG_MSG))
> -		dev_dbg(&ssif_info->client->dev,
> -			"Error from i2c_non_blocking_op(4)\n");
> -	return rv;
> +	ssif_i2c_send(ssif_info, msg_written_handler, I2C_SMBUS_WRITE,
> +		   command, ssif_info->data, I2C_SMBUS_BLOCK_DATA);
> +	return 0;
>  }
>  
>  static int start_send(struct ssif_info *ssif_info,
> -- 
> 2.19.1.6.gb485710b
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
