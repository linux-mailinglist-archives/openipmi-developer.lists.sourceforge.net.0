Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B43B19550E1
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 Aug 2024 20:31:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sf1jc-0004Bq-LG;
	Fri, 16 Aug 2024 18:31:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sf1jb-0004Bi-IL
 for openipmi-developer@lists.sourceforge.net;
 Fri, 16 Aug 2024 18:31:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t5JvIQmtD2C0JJ83zdFuIe41gWHt/MNwUc1aExjpQsk=; b=heWZeEidbiS/DIvwozDJA8wMHe
 HGU8ipbL1aXZyw06s7L5/1naBpz9JuqhMD9kVkvtfTZja47R986Hke8W8XgPGpO0aGtsM1j2Xg5s3
 YYX4yBAsnFnK+k84XfXw0//7htNv5CuoEPvKCfu5aRHVwcKe9WN6Z0RXsODtC4XWEwAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t5JvIQmtD2C0JJ83zdFuIe41gWHt/MNwUc1aExjpQsk=; b=MM0Xqiw5/kL0fs0sno0DLswSq5
 YecK7mNb8RuhpFQk+GJO/oSCfd4j6tJEWAi3aWeELhzr5P0Ba83BJpVrikx6C6w8rEaHL1O6KyHTh
 beQM0CBVzaeva31NY466Ns6bwcbly4PyUaRBgTwGsUes36jRrthM7+pJdLdKNdVjmmRM=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sf1jb-0007PD-C2 for openipmi-developer@lists.sourceforge.net;
 Fri, 16 Aug 2024 18:31:36 +0000
Received: by mail-qk1-f179.google.com with SMTP id
 af79cd13be357-7a1e4c75488so141684185a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 16 Aug 2024 11:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1723833084; x=1724437884;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=t5JvIQmtD2C0JJ83zdFuIe41gWHt/MNwUc1aExjpQsk=;
 b=Dk37BDIgDlMvzUuo8S+L6CG4arF93UeOx2aLaXvLLeiZd53wyxvwj1sE/t/kCKKNSK
 cK+cTv8w4ri9/gs3tblh8TysMBtKH0ENfI0vH6Ccbfqn/+AwEg354XIlqThOXwLBCYlY
 q8XIwfmLcr5ueC5JcgT42aRxNa2nuUixdfahgDQQehWnPthbgTD8WWkxSE2djLJEFkjx
 7xa3asa2jbj92tsOmV8/bLiVmNsBXKonCuKLBQsrBZ2PbQGTaYySHqAtZcJ0d0VD+4fc
 4HiOH6/XDL9Bk9DhoSifdYE0xKbYswqyVlLACqcPJCns6N/jHspXZeXSxgacs6FXoiMo
 0d2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723833084; x=1724437884;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=t5JvIQmtD2C0JJ83zdFuIe41gWHt/MNwUc1aExjpQsk=;
 b=G8XBXzyXgQbgZJW8vNmeY0euhSuKZfhj5kO1O1T+ULLhJvS7UzqII3jQhWiEXtc5uY
 lhG6xKnGS5AzQz+05BKS1Ba17iZh172mvbQlukzzOil4lTYeBOmspqJNfafW98m8+RNj
 Tt0u7j7dhXOdNYzuWWrvvJBy68KteskphrF8R23dIqgxunM86r4yoxXxaNIVRSfSxCKf
 pp5dplVHNn/9Vc7lssKvYdZZHNyWajlIWDDMqMrVxBlnoZYIec0ALN1e4Opnxg6j4K3g
 BBhzJKmyQ+Hsu0+q0IlUpSkvzs1yIhenBIXys12aBmwLuH5NZh94VwuD7Uw7H9FzzzQQ
 ijCg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUiuoR9+WG+D1BCh2LGmh7pfLeiGQYsb9ei0eJWIO+DrokZICeT6yHzDZbCXVjrSia9hHePQCOY7bDsRD5bxiFtsOQHovM2nYN0SMLiIpo7nJOYOToNBO51
X-Gm-Message-State: AOJu0YyPpEonYj7nfrTVPsJWKAD5byz+K3I35zxAHC0wgwQNGqEvS4vz
 uecBr4+a6hDVnD4lvtjueX74Bx/8/5sWaRpeExebzIwB6vHt0LZTPsbjBTiEvLgiH0xRuFId2fw
 o
X-Google-Smtp-Source: AGHT+IHati2YAs6007YVCqJh7zzRfzYuKvZLZCqgFGLXZ7Kn7Ta7mdUOztJD+fP+78/HCzzJ/h71gA==
X-Received: by 2002:a05:6870:b506:b0:270:16d3:40b3 with SMTP id
 586e51a60fabf-27033fb918bmr388477fac.16.1723831467286; 
 Fri, 16 Aug 2024 11:04:27 -0700 (PDT)
Received: from mail.minyard.net (65-36-24-217.dyn.grandenetworks.net.
 [65.36.24.217]) by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-270046a500fsm1012570fac.24.2024.08.16.11.04.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2024 11:04:26 -0700 (PDT)
Date: Fri, 16 Aug 2024 13:04:23 -0500
From: Corey Minyard <corey@minyard.net>
To: "Ivan T. Ivanov" <iivanov@suse.de>
Message-ID: <Zr+Up+94gmPEHwcJ@mail.minyard.net>
References: <20240816065458.117986-1-iivanov@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240816065458.117986-1-iivanov@suse.de>
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 16, 2024 at 09:54:58AM +0300,
 Ivan T. Ivanov wrote:
 > It is pointless to continue module probing when communication > with device
 is failing. This just fill logs with misleading > messages [...] 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.222.179 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.222.179 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sf1jb-0007PD-C2
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Exit early when there
 is a SMBus error
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 16, 2024 at 09:54:58AM +0300, Ivan T. Ivanov wrote:
> It is pointless to continue module probing when communication
> with device is failing. This just fill logs with misleading
> messages like this:

So the BMC (or whatever is there) responds to a GET_DEVICE_ID command,
but then doesn't properly handle any other valid and mandatory commands?
And this device was added via ACPI or SMBIOS or device tree, almost
certainly.

My comments are:

1) This fix is wrong, because it may mask important things that need to
be reported.

2) Fix the source of the problem.  You can't expect software to
compensate for all bad hardware and firmware.  I'd guess the firmware
tables are pointing to something that's not a BMC.

3) It appears the response to the GET_DEVICE_ID command, though a
response is returned, is not valid.  The right way to handle this would
be to do more validation in the ssif_detect() function.  It doesn't do
any validation of the response data, and that's really what needs to be
done.

-corey

> 
> [Fri Jul 26 18:32:34 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Error fetching SSIF: -121 180453376 62, your system probably doesn't support this command so using defaults
> [Fri Jul 26 18:32:54 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Unable to clear message flags: -121 180453376 62
> [Fri Jul 26 18:33:14 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Error getting global enables: -121 180453376 62
> [Fri Jul 26 18:33:49 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
> [Fri Jul 26 18:33:50 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
> [Fri Jul 26 18:34:07 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
> [Fri Jul 26 18:34:07 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
> [Fri Jul 26 18:34:25 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
> [Fri Jul 26 18:34:25 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
> [Fri Jul 26 18:34:43 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
> [Fri Jul 26 18:34:43 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
> [Fri Jul 26 18:35:01 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
> [Fri Jul 26 18:35:01 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
> [Fri Jul 26 18:35:19 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
> [Fri Jul 26 18:35:19 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: Unable to get the device id: -5
> [Fri Jul 26 18:35:19 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Unable to register device: error -5
> [Fri Jul 26 18:35:19 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Unable to start IPMI SSIF: -5
> [Fri Jul 26 18:35:19 2024] ipmi_ssif: probe of i2c-IPI0001:00 failed with error -5
> 
> Also in some of these prints uninitialized variables are used.
> So just exit early when communication with device is flawed.
> 
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 96ad571d041a..37516733e5c8 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1315,6 +1315,16 @@ static int read_response(struct i2c_client *client, unsigned char *resp)
>  	return ret;
>  }
>  
> +/* Filter SMBus communication errors from incorrect response errors */
> +static bool is_smbus_error(struct device *dev, int err)
> +{
> +	if (!err || err == -EINVAL || err == -E2BIG)
> +		return false;
> +
> +	dev_err(dev, "SMbus error: %d\n", err);
> +	return true;
> +}
> +
>  static int do_cmd(struct i2c_client *client, int len, unsigned char *msg,
>  		  int *resp_len, unsigned char *resp)
>  {
> @@ -1709,6 +1719,8 @@ static int ssif_probe(struct i2c_client *client)
>  	msg[1] = IPMI_GET_SYSTEM_INTERFACE_CAPABILITIES_CMD;
>  	msg[2] = 0; /* SSIF */
>  	rv = do_cmd(client, 3, msg, &len, resp);
> +	if (is_smbus_error(&client->dev, rv))
> +		goto out;
>  	if (!rv && (len >= 3) && (resp[2] == 0)) {
>  		if (len < 7) {
>  			if (ssif_dbg_probe)
> @@ -1767,6 +1779,8 @@ static int ssif_probe(struct i2c_client *client)
>  	msg[1] = IPMI_CLEAR_MSG_FLAGS_CMD;
>  	msg[2] = WDT_PRE_TIMEOUT_INT;
>  	rv = do_cmd(client, 3, msg, &len, resp);
> +	if (is_smbus_error(&client->dev, rv))
> +		goto out;
>  	if (rv || (len < 3) || (resp[2] != 0))
>  		dev_warn(&ssif_info->client->dev,
>  			 "Unable to clear message flags: %d %d %2.2x\n",
> @@ -1776,6 +1790,8 @@ static int ssif_probe(struct i2c_client *client)
>  	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
>  	msg[1] = IPMI_GET_BMC_GLOBAL_ENABLES_CMD;
>  	rv = do_cmd(client, 2, msg, &len, resp);
> +	if (is_smbus_error(&client->dev, rv))
> +		goto out;
>  	if (rv || (len < 4) || (resp[2] != 0)) {
>  		dev_warn(&ssif_info->client->dev,
>  			 "Error getting global enables: %d %d %2.2x\n",
> @@ -1796,6 +1812,8 @@ static int ssif_probe(struct i2c_client *client)
>  	msg[1] = IPMI_SET_BMC_GLOBAL_ENABLES_CMD;
>  	msg[2] = ssif_info->global_enables | IPMI_BMC_EVT_MSG_BUFF;
>  	rv = do_cmd(client, 3, msg, &len, resp);
> +	if (is_smbus_error(&client->dev, rv))
> +		goto out;
>  	if (rv || (len < 2)) {
>  		dev_warn(&ssif_info->client->dev,
>  			 "Error setting global enables: %d %d %2.2x\n",
> @@ -1818,6 +1836,8 @@ static int ssif_probe(struct i2c_client *client)
>  	msg[1] = IPMI_SET_BMC_GLOBAL_ENABLES_CMD;
>  	msg[2] = ssif_info->global_enables | IPMI_BMC_RCV_MSG_INTR;
>  	rv = do_cmd(client, 3, msg, &len, resp);
> +	if (is_smbus_error(&client->dev, rv))
> +		goto out;
>  	if (rv || (len < 2)) {
>  		dev_warn(&ssif_info->client->dev,
>  			 "Error setting global enables: %d %d %2.2x\n",
> -- 
> 2.43.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
