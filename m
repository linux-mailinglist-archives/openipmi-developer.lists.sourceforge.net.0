Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B33030780F
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Jan 2021 15:32:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l58L4-0005dR-6E; Thu, 28 Jan 2021 14:32:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1l58L2-0005dB-6X
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Jan 2021 14:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ic6h2SFkOzRN97sGVwqYqqaNZ1eJrrc6kgyyHGlVERY=; b=f5ZkgkzqPA7lYc1VaUeGdCoIpN
 19ury/yFROZNDczY4WH7FYuFo9lfi8TkyUP9lOqVYSvMf/F3Z3KYlfEXivSc1EkIt5DBdUunpqLXZ
 RZLQ8hAbGZ/bXUQarzXuuilYS6WLiNbXQhZ+u9oivgDCzd4iXTdkVxvhlobqFZMbTwaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ic6h2SFkOzRN97sGVwqYqqaNZ1eJrrc6kgyyHGlVERY=; b=fBhNI2YhIoy401BgDpCtEPoLz5
 GW56QyY/11bzJXASt22hwSJ1czW6fGB3HX3idDbqCc2nSzvxbCpY0UsQM5LSZje2wQrf4pnCWZ8kJ
 cMmzhjY0jvZz2BtTcclZwuL9y4oLnGMSau3saILS29PCsMRgqHJQkRu7jbUFKHNjAxR8=;
Received: from mail-yb1-f174.google.com ([209.85.219.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1l58Kp-0001i9-8O
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Jan 2021 14:31:59 +0000
Received: by mail-yb1-f174.google.com with SMTP id k4so5623457ybp.6
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Jan 2021 06:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ic6h2SFkOzRN97sGVwqYqqaNZ1eJrrc6kgyyHGlVERY=;
 b=jMY/1HY3b9d5bJhF0yal4luLKK9YeW4Mp6JZH0NAUva1nb7zw8WTEonAlTxUcxkiaX
 91XgOvr8lRVV1WhBIn/cDVCOAHDc3947Vn2+48e4papRappbIv9ldMaqo0UofrBBD28l
 +1QMUhfHUwYsOb0I7YzrHzGRVZo9UL2j922LnlveSZJKmrTj3pUwsm3iLjEM16J4Dqk/
 ZprUtRFLiAHcgdG2FJGcE2gwbZPn3ncrSKHviGRRz0ad5vOzaynVCMwUdGITYUQssR9V
 lOawc006uc/F3tP4btcgZdApNHTFmhj7giU1s0gi/SSSnEjG/gFKso+NMOlGmy+CkIIn
 k17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to;
 bh=Ic6h2SFkOzRN97sGVwqYqqaNZ1eJrrc6kgyyHGlVERY=;
 b=mbGApBy4jaAHTBjjJeIjjPKgN9Vf9HLDJ8ivxQs3v9/aSnt+bdYKOVri7x8cH0R6jt
 qMNETYjodRrqKF6p2otX43WxRXkm4Xk6Im/rO4VQU3+4hnwO0qcq1pAL26CMYNK2IJOT
 pl8FOEex9aZE2VXp+8s9/um06frku34iVKB5hNLrv8tcSavLa3s11RZcGnlAl4+FH4Am
 A25+AsnYHp+Kj0xh8XpRcWuELZmgmWvzOh90307FNkVq64AxQeTQN4AAESFan1CyBcuw
 J1LxIJONW6O9RH8Hr52/Buh/08A0u3o1fuFpipUYE9D6yXne6ufHyfdif5apCRN58xJm
 vF5w==
X-Gm-Message-State: AOAM531qBquIFoRnE1iLtsNkBlwTd/0I4EvXI2Wdjm8pYA/7cAVC5y5y
 1sSMIaSAso36MYuR8+KVyJM3WrDKHOrUKQ==
X-Google-Smtp-Source: ABdhPJx2++uXhA/l2NGSQmog9eANjfBpbJ1mv58ElnQuc1TYJ8799n/KJXkZNKK5bHF7SeOtz7Fh6g==
X-Received: by 2002:a9d:66c1:: with SMTP id t1mr11251422otm.106.1611837481916; 
 Thu, 28 Jan 2021 04:38:01 -0800 (PST)
Received: from minyard.net ([2001:470:b8f6:1b:d0e0:7e1d:debb:57fe])
 by smtp.gmail.com with ESMTPSA id o16sm936217ote.79.2021.01.28.04.37.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 04:37:58 -0800 (PST)
Date: Thu, 28 Jan 2021 06:37:57 -0600
From: Corey Minyard <cminyard@mvista.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <20210128123757.GW21462@minyard.net>
References: <20210128085544.7609-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128085544.7609-1-wsa+renesas@sang-engineering.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sang-engineering.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l58Kp-0001i9-8O
Subject: Re: [Openipmi-developer] [PATCH RESEND] ipmi: remove open coded
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
Reply-To: cminyard@mvista.com
Cc: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-i2c@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Asmaa Mnebhi <asmaa@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Looks good, do you want this in the IPMI tree or are you handling this
another way?

Thanks,

-corey

On Thu, Jan 28, 2021 at 09:55:43AM +0100, Wolfram Sang wrote:
> The block-write function of the core was not used because there was no
> client-struct to use. However, in this case it seems apropriate to use a
> temporary client struct. Because we are answering a request we recieved
> when being a client ourselves. So, convert the code to use a temporary
> client and use the block-write function of the I2C core.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Asmaa Mnebhi <asmaa@nvidia.com>
> Acked-by: Corey Minyard <cminyard@mvista.com>
> ---
> 
> No change since V1, Only added tags given in private communication.
> 
>  drivers/char/ipmi/ipmb_dev_int.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 382b28f1cf2f..49b8f22fdcf0 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -137,7 +137,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  {
>  	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
>  	u8 rq_sa, netf_rq_lun, msg_len;
> -	union i2c_smbus_data data;
> +	struct i2c_client *temp_client;
>  	u8 msg[MAX_MSG_LEN];
>  	ssize_t ret;
>  
> @@ -160,21 +160,21 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
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
> +	temp_client = kmemdup(ipmb_dev->client, sizeof(*temp_client), GFP_KERNEL);
> +	if (!temp_client)
> +		return -ENOMEM;
> +
> +	temp_client->addr = rq_sa;
>  
> -	data.block[0] = msg_len;
> -	memcpy(&data.block[1], msg + SMBUS_MSG_IDX_OFFSET, msg_len);
> -	ret = i2c_smbus_xfer(ipmb_dev->client->adapter, rq_sa,
> -			     ipmb_dev->client->flags,
> -			     I2C_SMBUS_WRITE, netf_rq_lun,
> -			     I2C_SMBUS_BLOCK_DATA, &data);
> +	ret = i2c_smbus_write_block_data(temp_client, netf_rq_lun, msg_len,
> +					 msg + SMBUS_MSG_IDX_OFFSET);
> +	kfree(temp_client);
>  
> -	return ret ? : count;
> +	return ret < 0 ? ret : count;
>  }
>  
>  static __poll_t ipmb_poll(struct file *file, poll_table *wait)
> -- 
> 2.28.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
