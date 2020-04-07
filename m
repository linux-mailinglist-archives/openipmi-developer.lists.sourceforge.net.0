Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 702661A0E83
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Apr 2020 15:40:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jLoSr-0007ji-D0; Tue, 07 Apr 2020 13:40:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jLoSp-0007jG-Cc
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Apr 2020 13:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qEVjxeIlS9igveaV+xU6VqWnT7ciWNXB+lD5YjOf0YY=; b=NpuWwbI5crGVDcYealO1kVlyQY
 uq4s+xQLPSh8Y0yX8WvUbhiZyjHnP0COxnGYfTqYrgW1VjYa83LMzqdmVq9AKnJ8NoG3C9yLEkI5f
 s3LcWTqcDS7aY5PViPfpDi4ImwlppegZl5i8J5rbU6WK0jJdQ0U3NTszBO2MI0Cbz5Tk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qEVjxeIlS9igveaV+xU6VqWnT7ciWNXB+lD5YjOf0YY=; b=AS0jYYOVbQbeDIYW6S81tizmES
 NvK36Xm5aWRW9F7dZlENXa8qZccjwBcZFWgK6dlW+vGYFnpSbV70hygW0mZoSDtUX8n/Xor1OFP6g
 HeZQWkwfOW1d/xn2jXl85Ii8IyYvWMRt074kYdbgkQ4T6pH9FNH5I1VOYZ4xwJhXc6M0=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLoSl-005pEz-Cz
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Apr 2020 13:40:26 +0000
Received: by mail-oi1-f194.google.com with SMTP id r21so1479705oij.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Apr 2020 06:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qEVjxeIlS9igveaV+xU6VqWnT7ciWNXB+lD5YjOf0YY=;
 b=VHuyf2fEUTXsrAaVoC8SK0zXMcw6H5Lk0weP/eaRiRqQzlAWTFGOpNCdDus81NDfPz
 YG8CY3OGpqJ1tRTflaBPTBnNrpeTZ8FWwLEjdtikemnsFhR4EtIB2XRRoXV0hVY4h8Gj
 uAFOBds2Hknlr2vemVncYRkIyeFsi6O1uGCjGDkUx7KOn+6xKvt7BgAf7zmvLTPWznwh
 Gp0kzKD3OJssr0u6oIs4pXxvBwVRRJmbQkhHvdwiZqjTLdmB3vkzemwcWlXs9ajYx7S/
 W5owG2bMhZxG9TAFNYqj42yls/6yGBFi3IawvVKai9Ruq0Q0frHjwm7CqG+HUgLrnGag
 8a9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=qEVjxeIlS9igveaV+xU6VqWnT7ciWNXB+lD5YjOf0YY=;
 b=YpHmPkSjmpnHZ5A/P5W9gQ+aoEjA7Q2Iyqcvy66VwokJPDdMT5Wf4kZGC4upqZSxZA
 3M5OgxxG3dQg1AnUmYJmR6vYxgerNrPULaAcpjy6iNKpPAKcQj9TPghy1BulgyFFRIi4
 sCVhuFgWOeBgTszcoZgqaRjvIpC9zOlvYAi1LBOLm369HttkUimJKGje+EuFIM0R0Cb+
 JA9It/6RXVgJHXWqbXiOEMw8imzwN4KVheEdRG9vj4sxFTSUNpyrq64dF3RRpDwuDkrw
 QpNx2vqTuIZO9iyM9in6pHcDOpBmJNe60Vddo2t9RzCSQa7F5gXki8gpBKgu/PjUep8b
 tpTQ==
X-Gm-Message-State: AGi0PuYZL8gZqWGn7ziOCV+DoTOYZnU8d3LnE+1RN8Yp91sA0MihLTHV
 egpK6s/NcZ5AVfGwAdZctKsC6rM=
X-Google-Smtp-Source: APiQypJD+WzFC0CWDwX7/blmcYgI8Ij3wnrYGadb+0+fHv7uVjysyC3QPl3npzT4r8M7LGUL1Rcv4A==
X-Received: by 2002:aca:474e:: with SMTP id u75mr1710905oia.52.1586266817428; 
 Tue, 07 Apr 2020 06:40:17 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id a3sm1129086oop.36.2020.04.07.06.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 06:40:14 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 39A47180053;
 Tue,  7 Apr 2020 13:40:13 +0000 (UTC)
Date: Tue, 7 Apr 2020 08:40:12 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200407134012.GC6130@minyard.net>
References: <20200406043415.12292-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406043415.12292-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chinamobile.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jLoSl-005pEz-Cz
Subject: Re: [Openipmi-developer] [PATCH v2]ipmi:bt-bmc:Avoid unnecessary
 judgement
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Apr 06, 2020 at 12:34:15PM +0800, Tang Bin wrote:
> In this driver,only the platform_device and platform_driver
> matches,can trigger bt_bmc_probe(),and the trigger mode is
> just Device Tree.Thus remove redundant judgments.

How about the following commit message:

bt_bmc_probe() is only called with an openfirmware platform device.
Therefore there is no need to check that the passed in device is NULL or
that it has an openfirmware node.

Also, how did you find this?

Thanks,

-corey

> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
> Changes from v1:
>  - improve the commit message.
> 
>  drivers/char/ipmi/bt-bmc.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index d36aeacb2..890ad55aa 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -430,9 +430,6 @@ static int bt_bmc_probe(struct platform_device *pdev)
>  	struct device *dev;
>  	int rc;
>  
> -	if (!pdev || !pdev->dev.of_node)
> -		return -ENODEV;
> -
>  	dev = &pdev->dev;
>  	dev_info(dev, "Found bt bmc device\n");
>  
> -- 
> 2.20.1.windows.1
> 
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
