Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71032979A6
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Aug 2019 14:39:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i0Pu8-0004Rs-LX; Wed, 21 Aug 2019 12:39:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1i0Pu7-0004Rm-Si
 for openipmi-developer@lists.sourceforge.net; Wed, 21 Aug 2019 12:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1DQJWn+ibudXHzu56fJPgiO6mpd/1nURhgitbxFw278=; b=cO15YHS5wgGfhZZ1bonlaaHMZT
 jNfY7iHLautuXVB2YO9L1MoqnigNwFlTYA1QoSucxRx1/wDFVZguGUoGXq2NvLvENpQJKChf1l/P1
 FhYQZlOomJvuuWNeNO37HAOpjlU30lTS1GSuPcPimuYkakCt37QQPahAuLizwn1yUIjs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1DQJWn+ibudXHzu56fJPgiO6mpd/1nURhgitbxFw278=; b=Q/7pGItYFKyVHGsYXWNDT/7IqM
 1ujJhn4nn1FsCY+qS9oydNPCcq7ktqNCDom2uJ5Z+05ASxjonWPYd/HRTWkRsrgY1DiIqcZqjH/wH
 1JKf9AOkYW2f0ufWUNaE13xl/yu6SpN18tuE+1U4CdC0f8P54RD4Hi07I2oViy9i5mDo=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i0Pu6-00B17W-1X
 for openipmi-developer@lists.sourceforge.net; Wed, 21 Aug 2019 12:39:55 +0000
Received: by mail-oi1-f193.google.com with SMTP id o6so1423509oic.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 21 Aug 2019 05:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1DQJWn+ibudXHzu56fJPgiO6mpd/1nURhgitbxFw278=;
 b=I2vZn94QChyOvmL8FAa7iT3RVw4cceo7KN4SLb/2N7OqZqR7/L5iIatg3Qv4exSpJi
 epOjqEJF5JeX38BdjhAXtsPfkej65+1ua+0BvHlZ0FhpvK77XBU5Jzb7zaBjJfspLkzD
 AiZAXYnl2YhJsAZ8DCE5vuDC+mSfQrtQn5xTo6Y89HzlnYfd3u9+ozVcYVyKRecOVMw+
 ks7gsKqdSAJb9UFo3fy8AJkHufvHW1WVo+Sru1N/S4fmqmDrxrAMLCBc+ycrlVDygKV9
 vY6Q71H+JOWjtz7S70KJwoh1zdAO7+mKG9XNXQrUngR02lzKx+bNeYg4iZrmLqVU2grx
 65GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=1DQJWn+ibudXHzu56fJPgiO6mpd/1nURhgitbxFw278=;
 b=RA8/SAfy2fpIxitZHlT4fNdj5Z/ucHuRD0hCKkYBMu3+H4FozWtaQ6t1jejV1dUdZ/
 UtXUlstD7gdEnXDGLLelXj+VbvGe52Pf4YXpBYvasilsMOkVcbHzOnJn59IrrFAAB5v5
 rL/OPXX1u++Y8DBB97M+8hRABZ7og2H1pd0IVNS22cSa4EIaXq4aGOmzDwZQ07PCu8C0
 tW1Ubdz/tYFTVllJFNPdmAgKzkN+CsLWUsBOldVNDYj158t9tisoPR7+klGhjOxLrrLp
 OaM7XVn14Uztsop9xlVrKqLq3YOsBg08y4NxJqTQdYVUqysM4kqhH1QkloEKELky9Id2
 53Ew==
X-Gm-Message-State: APjAAAUuls4znJ1KB+3YCyI82bLbC5biTugrYhs35NpLACYZiVo+XPRu
 Jvr9ii706+7iWKox2+1fr0Sd1G8=
X-Google-Smtp-Source: APXvYqwfIa+mRsJTofSMwCXk2VwU5gpTnBz372CJEBIx0S8rv9Yt62mYO+nAwuk9cGd0rEV0AgpV5A==
X-Received: by 2002:aca:ea0b:: with SMTP id i11mr3303655oih.102.1566391187576; 
 Wed, 21 Aug 2019 05:39:47 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id r2sm7716830otk.49.2019.08.21.05.39.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:39:46 -0700 (PDT)
Received: from minyard.net (t430m.minyard.net [192.168.27.3])
 by serve.minyard.net (Postfix) with ESMTPSA id 196641800D0;
 Wed, 21 Aug 2019 12:39:46 +0000 (UTC)
Date: Wed, 21 Aug 2019 07:39:44 -0500
From: Corey Minyard <minyard@acm.org>
To: Kamlakant Patel <kamlakantp@marvell.com>
Message-ID: <20190821123944.GP5001@minyard.net>
References: <1566389064-27356-1-git-send-email-kamlakantp@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566389064-27356-1-git-send-email-kamlakantp@marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marvell.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1i0Pu6-00B17W-1X
Subject: Re: [Openipmi-developer] [PATCH v3] ipmi_ssif: avoid registering
 duplicate ssif interface
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
Cc: "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 George Cherian <gcherian@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 21, 2019 at 12:04:33PM +0000, Kamlakant Patel wrote:
> It is possible that SSIF interface entry is present in both DMI and ACPI
> tables. In SMP systems, in such cases it is possible that ssif_probe could
> be called simultaneously from i2c interface (from ACPI) and from DMI on
> different CPUs at kernel boot. Both try to register same SSIF interface
> simultaneously and result in race.
> 
> In such cases where ACPI and SMBIOS both IPMI entries are available, we
> need to prefer ACPI over SMBIOS so that ACPI functions work properly if
> they use IPMI.
> So, if we get an ACPI interface and have already registered an SMBIOS
> at the same address, we need to remove the SMBIOS one and add the ACPI.
> 
> Log:
> [   38.774743] ipmi device interface
> [   38.805006] ipmi_ssif: IPMI SSIF Interface driver
> [   38.861979] ipmi_ssif i2c-IPI0001:06: ssif_probe CPU 99 ***
> [   38.863655] ipmi_ssif 0-000e: ssif_probe CPU 14 ***
> [   38.863658] ipmi_ssif: Trying SMBIOS-specified SSIF interface at i2c address 0xe, adapter xlp9xx-i2c, slave address 0x0
> [   38.869500] ipmi_ssif: Trying ACPI-specified SSIF interface at i2c address 0xe, adapter xlp9xx-i2c, slave address 0x0
> [   38.914530] ipmi_ssif: Unable to clear message flags: -22 7 c7
> [   38.952429] ipmi_ssif: Unable to clear message flags: -22 7 00
> [   38.994734] ipmi_ssif: Error getting global enables: -22 7 00
> [   39.015877] ipmi_ssif 0-000e: IPMI message handler: Found new BMC (man_id: 0x00b3d1, prod_id: 0x0001, dev_id: 0x20)
> [   39.377645] ipmi_ssif i2c-IPI0001:06: IPMI message handler: Found new BMC (man_id: 0x00b3d1, prod_id: 0x0001, dev_id: 0x20)
> [   39.387863] ipmi_ssif 0-000e: IPMI message handler: BMC returned incorrect response, expected netfn 7 cmd 42, got netfn 7 cmd 1
> ...
> [NOTE] : Added custom prints to explain the problem.
> 
> In the above log, ssif_probe is executed simultaneously on two different
> CPUs.
> 
> This patch fixes this issue in following way:
>  - Adds ACPI entry also to the 'ssif_infos' list.
>  - Checks the list if SMBIOS is already registered, removes it and adds
>    ACPI.
>  - If ACPI is already registered, it ignores SMBIOS.
>  - Adds mutex lock throughout the probe process to avoid race.
> 
> Signed-off-by: Kamlakant Patel <kamlakantp@marvell.com>
> ---
> Hi Corey,
> 
> I have done a few improvements on the code based on internal review comments.
> Could you please pick this patch instead of previous one.

Ok, got it, thanks.

-corey

> 
> Thanks,
> Kamlakant Patel
> 
> Changes since v2:
>  - Handle mutex_unlock for all error paths.
>  - Removed unnecessary goto from ssif_check_and_remove.
>  - Removed unnecessary continue from ssif_check_and_remove.
>  - Removed unnecessary ssif_client_match function.
>  - Removed unnecessary NULL check.
>  - Moved ssif_add_infos to ssif_probe to avoid to make it more readable.
> 
> Changes since v1:
>  - Avoid using separate list for handling ACPI entries.
>  - This patch adds ACPI entry also to the ssif_infos list.
> 
>  drivers/char/ipmi/ipmi_ssif.c | 78 ++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 77 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 305fa505..ee60892 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1428,6 +1428,10 @@ static struct ssif_addr_info *ssif_info_find(unsigned short addr,
>  restart:
>  	list_for_each_entry(info, &ssif_infos, link) {
>  		if (info->binfo.addr == addr) {
> +			if (info->addr_src == SI_SMBIOS)
> +				info->adapter_name = kstrdup(adapter_name,
> +							     GFP_KERNEL);
> +
>  			if (info->adapter_name || adapter_name) {
>  				if (!info->adapter_name != !adapter_name) {
>  					/* One is NULL and one is not */
> @@ -1603,6 +1607,60 @@ static void test_multipart_messages(struct i2c_client *client,
>  #define GLOBAL_ENABLES_MASK (IPMI_BMC_EVT_MSG_BUFF | IPMI_BMC_RCV_MSG_INTR | \
>  			     IPMI_BMC_EVT_MSG_INTR)
>  
> +static void ssif_remove_dup(struct i2c_client *client)
> +{
> +	struct ssif_info *ssif_info = i2c_get_clientdata(client);
> +
> +	ipmi_unregister_smi(ssif_info->intf);
> +	kfree(ssif_info);
> +}
> +
> +static int ssif_add_infos(struct i2c_client *client)
> +{
> +	struct ssif_addr_info *info;
> +
> +	info = kzalloc(sizeof(*info), GFP_KERNEL);
> +	if (!info)
> +		return -ENOMEM;
> +	info->addr_src = SI_ACPI;
> +	info->client = client;
> +	info->adapter_name = kstrdup(client->adapter->name, GFP_KERNEL);
> +	info->binfo.addr = client->addr;
> +	list_add_tail(&info->link, &ssif_infos);
> +	return 0;
> +}
> +
> +/*
> + * Prefer ACPI over SMBIOS, if both are available.
> + * So if we get an ACPI interface and have already registered a SMBIOS
> + * interface at the same address, remove the SMBIOS and add the ACPI one.
> + */
> +static int ssif_check_and_remove(struct i2c_client *client,
> +			      struct ssif_info *ssif_info)
> +{
> +	struct ssif_addr_info *info;
> +
> +	list_for_each_entry(info, &ssif_infos, link) {
> +		if (!info->client)
> +			return 0;
> +		if (!strcmp(info->adapter_name, client->adapter->name) &&
> +		    info->binfo.addr == client->addr) {
> +			if (info->addr_src == SI_ACPI)
> +				return -EEXIST;
> +
> +			if (ssif_info->addr_source == SI_ACPI &&
> +			    info->addr_src == SI_SMBIOS) {
> +				dev_info(&client->dev,
> +					 "Removing %s-specified SSIF interface in favor of ACPI\n",
> +					 ipmi_addr_src_to_str(info->addr_src));
> +				ssif_remove_dup(info->client);
> +				return 0;
> +			}
> +		}
> +	}
> +	return 0;
> +}
> +
>  static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  {
>  	unsigned char     msg[3];
> @@ -1614,13 +1672,17 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  	u8		  slave_addr = 0;
>  	struct ssif_addr_info *addr_info = NULL;
>  
> +	mutex_lock(&ssif_infos_mutex);
>  	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
> -	if (!resp)
> +	if (!resp) {
> +		mutex_unlock(&ssif_infos_mutex);
>  		return -ENOMEM;
> +	}
>  
>  	ssif_info = kzalloc(sizeof(*ssif_info), GFP_KERNEL);
>  	if (!ssif_info) {
>  		kfree(resp);
> +		mutex_unlock(&ssif_infos_mutex);
>  		return -ENOMEM;
>  	}
>  
> @@ -1639,6 +1701,19 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  		}
>  	}
>  
> +	rv = ssif_check_and_remove(client, ssif_info);
> +	/* If rv is 0 and addr source is not SI_ACPI, continue probing */
> +	if (!rv && ssif_info->addr_source == SI_ACPI) {
> +		rv = ssif_add_infos(client);
> +		if (rv) {
> +			dev_err(&client->dev, "Out of memory!, exiting ..\n");
> +			goto out;
> +		}
> +	} else if (rv) {
> +		dev_err(&client->dev, "Not probing, Interface already present\n");
> +		goto out;
> +	}
> +
>  	slave_addr = find_slave_address(client, slave_addr);
>  
>  	dev_info(&client->dev,
> @@ -1851,6 +1926,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  		kfree(ssif_info);
>  	}
>  	kfree(resp);
> +	mutex_unlock(&ssif_infos_mutex);
>  	return rv;
>  
>  out_remove_attr:
> -- 
> 1.8.3.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
