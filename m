Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8F374063
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jul 2019 22:47:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hqOAB-0008FM-Gl; Wed, 24 Jul 2019 20:47:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hqOAA-0008F7-0j
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Jul 2019 20:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WDqQXSE98O9gwYfyiarU3vMDzaj+JvflhUf93uLLlmI=; b=I/6rgpq4pxn50ztJ7f1xEJj1I2
 xSh8Ov5ObM9TOTcttuh/Dc1NpEXuv+3yFwrK+2BfmJ0DIObQ3hSy2T2Qbmul6ZBWmfiguyR4pmfaS
 4qm6/rTLR21HonR0tDcpV/T2oJ3TW8D13xzOCMry7axTBk1nNxgomitmczCWNdlTiJ7c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WDqQXSE98O9gwYfyiarU3vMDzaj+JvflhUf93uLLlmI=; b=OrshspXklJ7rYnhK4wGEhdQdXr
 6Pf/O2L/3gtnJi/q84C2y6VfDkOd4Lpj8pe8jdFtdPZWnm/mWwjevTwuzVCcui1nHf3TUqNjk1LLf
 m9f43ncN8KkhSjEkD1S59Dm4F3VZiXPgDsFuDT57ofvQfcAqFTK9qSVkaxfmTF6Pxcq4=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqOA7-00EZnD-Sg
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Jul 2019 20:47:01 +0000
Received: by mail-pf1-f196.google.com with SMTP id b13so21522285pfo.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 13:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WDqQXSE98O9gwYfyiarU3vMDzaj+JvflhUf93uLLlmI=;
 b=DLIOkfXEGXGVPZMF7sGB760cK9Onow4n4d5BrIjmogiki12F5voP2EwePbBIefE75t
 WgzoC7lgVCeMxJK8H3G+7lHpAgOWmmEiVzWiU0WZk+94CxmZhl0R70ld+++4pbPK0RPr
 z+99kqQxiSg+glzFmMybblMHCIk+uVA9pKj9nGwquVHGXn/hLfi8ysvyzQyEJ8k4avjO
 Et1YTrKq59u3zi1pGdCS7YrAxRCcSlNF+hxrqMjzNYEXWigFjcPBKFnZadaP46jt7pX5
 WN1I928pxRTI2FGSD6kSoaptINoUgMBufI5Q/wIHM5fr0u6XKCYQBd7Ks58wIECGus3b
 yW2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=WDqQXSE98O9gwYfyiarU3vMDzaj+JvflhUf93uLLlmI=;
 b=uFdlkiS20dPlEWZAMYtX6Exi76qdYH/XEKERiuiIWCbLZ0inKAMbr5FG1Cluwp+pxB
 4H8g/b0tmtd/9DeT/Qn2f/tOR5m3cw+tvPYqT2jC4dVvJKixBEsCT9OHm8rMfYGtrw/K
 OKJXwUWbxTMLfGXZ1SOu1XRoxFwbwnWnxKpP41TabmDNcY0ZqH6GuOOlsr1zJC6DobBi
 DKjkGyxkTLG8krfn6na7A+25lO2dlchI80RGlrpwQWKl30ZHN7u8SHkqWBVkQ/sTwEMc
 GcMkxgSpBfXqfmRa+F0EQi4LTYCb7BVDSxQ5+Wi0nyNh2tdF+IRdXH6ae4xMq/LDD6RD
 jJ4Q==
X-Gm-Message-State: APjAAAVum7TDDA5yo/f71PD22s9Gr/fiROdPAIOEdUPB96LGgHFhDAnr
 w7XTlvEqDFhgpROFUldNErve7Zo=
X-Google-Smtp-Source: APXvYqyW4WvRHV9EXCVZRWIPli9dKB8G1002Uoh2TcspqdYxA4TjwqTFFXbcGzf2iDsIoHRuc0NZKg==
X-Received: by 2002:a65:50c8:: with SMTP id s8mr43435778pgp.339.1564001213463; 
 Wed, 24 Jul 2019 13:46:53 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id z13sm39910316pjn.32.2019.07.24.13.46.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:46:52 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e55a:7d0e:c640:aed1])
 by serve.minyard.net (Postfix) with ESMTPSA id E5E181800CD;
 Wed, 24 Jul 2019 20:46:50 +0000 (UTC)
Date: Wed, 24 Jul 2019 15:46:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Kamlakant Patel <kamlakantp@marvell.com>
Message-ID: <20190724204649.GA5134@minyard.net>
References: <1563379709-19758-1-git-send-email-kamlakantp@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563379709-19758-1-git-send-email-kamlakantp@marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marvell.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hqOA7-00EZnD-Sg
Subject: Re: [Openipmi-developer] [PATCH RFC] ipmi_ssif: avoid registering
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
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 George Cherian <gcherian@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jul 17, 2019 at 04:08:59PM +0000, Kamlakant Patel wrote:

In general I think this is ok.  A few issues, though:

> It is possible that SSIF interface entry is present in both DMI and ACPI tables.
> In SMP systems, in such cases it is possible that ssif_probe could be called
> simultaneously from i2c interface (from ACPI) and from DMI on different CPUs at
> kernel boot. Both try to register same SSIF interface simultaneously and result
> in race.
> 
> In such cases where ACPI and SMBIOS both IPMI entries are available, we need
> to prefer ACPI over SMBIOS so that ACPI functions work properly if they use IPMI.
> So, if we get an ACPI interface and have already registered an SMBIOS at the same
> address, we need to remove the SMBIOS one and add the ACPI one.

Text in the header needs to be <=75 characters wide, per kernel style.

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
> In the above log ssif_probe is executed simultaneously on two different CPUs.
> 
> This patch fixes this issue in following way:
> 1. Adds ACPI entry also to the 'ssif_infos' list.
> 2. Checks the list if SMBIOS is already registered, removes it and adds ACPI.
> 3. If ACPI is already registered, it ignores SMBIOS.
> 4. Adds mutex lock throughout the probe process to avoid race.
> 
> Signed-off-by: Kamlakant Patel <kamlakantp@marvell.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 89 +++++++++++++++++++++++++++++++++--
>  1 file changed, 84 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 8b5aec5430f1..763279b5e17c 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -185,6 +185,7 @@ struct ssif_addr_info {
>  	char *adapter_name;
>  	int debug;
>  	int slave_addr;
> +	bool is_probed;
>  	enum ipmi_addr_src addr_src;
>  	union ipmi_smi_info_union addr_info;
>  	struct device *dev;
> @@ -1312,6 +1313,7 @@ static int ssif_remove(struct i2c_client *client)
>  
>  	list_for_each_entry(addr_info, &ssif_infos, link) {
>  		if (addr_info->client == client) {
> +			addr_info->is_probed = 0;
>  			addr_info->client = NULL;
>  			break;
>  		}
> @@ -1414,7 +1416,8 @@ static int strcmp_nospace(char *s1, char *s2)
>  	return 0;
>  }
>  
> -static struct ssif_addr_info *ssif_info_find(unsigned short addr,
> +static struct ssif_addr_info *ssif_info_find(struct i2c_client *client,
> +					     unsigned short addr,
>  					     char *adapter_name,
>  					     bool match_null_name)
>  {
> @@ -1423,6 +1426,13 @@ static struct ssif_addr_info *ssif_info_find(unsigned short addr,
>  restart:
>  	list_for_each_entry(info, &ssif_infos, link) {
>  		if (info->binfo.addr == addr) {
> +			if (!info->client && info->addr_src == SI_SMBIOS &&
> +			    client) {
> +				info->client = client;
> +				info->adapter_name = kstrdup(client->adapter->name,
> +								GFP_KERNEL);
> +			}
> +
>  			if (info->adapter_name || adapter_name) {
>  				if (!info->adapter_name != !adapter_name) {
>  					/* One is NULL and one is not */
> @@ -1592,12 +1602,73 @@ static void test_multipart_messages(struct i2c_client *client,
>  	return;
>  }
>  
> +static void ssif_remove_dup(struct i2c_client *client)
> +{
> +	struct ssif_info *ssif_info = i2c_get_clientdata(client);
> +
> +	if (!ssif_info)
> +		return;
> +	ipmi_unregister_smi(ssif_info->intf);
> +	kfree(ssif_info);
> +}

Space here.

>  /*
>   * Global enables we care about.
>   */
>  #define GLOBAL_ENABLES_MASK (IPMI_BMC_EVT_MSG_BUFF | IPMI_BMC_RCV_MSG_INTR | \
>  			     IPMI_BMC_EVT_MSG_INTR)
>  
> +static int ssif_check_present(struct ssif_addr_info *info,
> +			      struct i2c_client *client)

ssif_client_match() or something like that would probably be a better
name here.

> +{
> +	if (!strcmp(info->adapter_name, client->adapter->name) &&
> +		   (info->binfo.addr == client->addr))
> +		return true;
> +
> +	return false;
> +}
> +
> +/*
> + * Prefer ACPI over SMBIOS, if both are available.
> + * So if we get an ACPI interface and have already registered a SMBIOS
> + * interface at the same address, remove the SMBIOS and add the ACPI one.
> + */
> +static int ssif_is_registered(struct i2c_client *client,
> +			      struct ssif_info *ssif_info)
> +{

It would be better if is_xxx() functions don't have side effects.  That
can surprise the user.  A different function name would probably be
better.

> +	struct ssif_addr_info *info;
> +
> +	list_for_each_entry(info, &ssif_infos, link) {
> +		if (info->is_probed) {
> +			if (ssif_check_present(info, client)) {
> +				if (info->addr_src == SI_ACPI) {
> +					return -EEXIST;
> +				} else if (ssif_info->addr_source == SI_ACPI &&
> +					   info->addr_src == SI_SMBIOS) {
> +					dev_info(&client->dev,
> +						 "Removing %s-specified SSIF interface in favor of ACPI\n",
> +						 ipmi_addr_src_to_str(info->addr_src));
> +					ssif_remove_dup(info->client);
> +				}
> +			}
> +		} else if (ssif_info->addr_source == SI_SMBIOS) {
> +			info->is_probed = true;

I'm trying to figure out the purpose of is_probed.  Wouldn't
checkng client be good enough?

Then you don't need all this, and the check_present call
could just return false if client is not set.

> +			return 0;
> +		}
> +	}
> +
> +	info = kzalloc(sizeof(*info), GFP_KERNEL);
> +	if (!info)
> +		return -ENOMEM;
> +	info->addr_src = ssif_info->addr_source;
> +	info->is_probed = true;
> +	info->client = client;
> +	info->adapter_name = kstrdup(client->adapter->name, GFP_KERNEL);
> +	info->binfo.addr = client->addr;
> +	list_add_tail(&info->link, &ssif_infos);

You are duplicating a bunch of code here.  Make a function.

Also, hard-coded additions may be an issue here, as they are
not SMBIOS, but they already should have addr_info items.

I really should rename ssif_infos to ssif_addr_infos and
document it better :(.

I'm wishing there was a simpler way to do this, but I don't
see one.

-corey

> +
> +	return 0;
> +}
> +
>  static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  {
>  	unsigned char     msg[3];
> @@ -1609,6 +1680,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  	u8		  slave_addr = 0;
>  	struct ssif_addr_info *addr_info = NULL;
>  
> +	mutex_lock(&ssif_infos_mutex);
>  	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
>  	if (!resp)
>  		return -ENOMEM;
> @@ -1620,8 +1692,8 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  	}
>  
>  	if (!check_acpi(ssif_info, &client->dev)) {
> -		addr_info = ssif_info_find(client->addr, client->adapter->name,
> -					   true);
> +		addr_info = ssif_info_find(client, client->addr,
> +					   client->adapter->name, true);
>  		if (!addr_info) {
>  			/* Must have come in through sysfs. */
>  			ssif_info->addr_source = SI_HOTMOD;
> @@ -1633,7 +1705,13 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  			slave_addr = addr_info->slave_addr;
>  		}
>  	}
> -
> +	/* Check if SSIF is already registered */
> +	if (ssif_is_registered(client, ssif_info)) {
> +		kfree(resp);
> +		kfree(ssif_info);
> +		mutex_unlock(&ssif_infos_mutex);
> +		return 0;
> +	}
>  	slave_addr = find_slave_address(client, slave_addr);
>  
>  	dev_info(&client->dev,
> @@ -1846,6 +1924,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  		kfree(ssif_info);
>  	}
>  	kfree(resp);
> +	mutex_unlock(&ssif_infos_mutex);
>  	return rv;
>  
>  out_remove_attr:
> @@ -1878,7 +1957,7 @@ static int new_ssif_client(int addr, char *adapter_name,
>  	int rv = 0;
>  
>  	mutex_lock(&ssif_infos_mutex);
> -	if (ssif_info_find(addr, adapter_name, false)) {
> +	if (ssif_info_find(NULL, addr, adapter_name, false)) {
>  		rv = -EEXIST;
>  		goto out_unlock;
>  	}
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
