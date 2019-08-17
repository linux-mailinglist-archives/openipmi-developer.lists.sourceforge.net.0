Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D2C913C3
	for <lists+openipmi-developer@lfdr.de>; Sun, 18 Aug 2019 02:15:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hz8Zf-0006uh-Je; Sat, 17 Aug 2019 23:57:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hz8Ze-0006uI-Nb
 for openipmi-developer@lists.sourceforge.net; Sat, 17 Aug 2019 23:57:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+4kqaDkTkdxjwJfGykIJFzKFcFb9t5bAS4cxiEQukwo=; b=cq3cTBVMLIfcUOMEq58CGDSbvV
 jONrU4KYSFUQyeg6Aay0roorOpR9YeUEIowqFhdi9sAot3PuJSQ1TJ+VBr6cOutxxjNSpJnSaLRm5
 WcZpTz/yVvM3zddLZ6YZd4GmSBwtAiLms/8Wc5iEVXna1EPmzxrUkIAARFgFLYakqbOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+4kqaDkTkdxjwJfGykIJFzKFcFb9t5bAS4cxiEQukwo=; b=KAqpQCVgj3EDY0NK7y9h1IbECA
 Q3NOTYK0QInT2LmlTrtcSWTjMpdDFnpfp1h6L1dqwOqPo/6WQNrqU+JwgeBb/6kRDFKpDujvd2udB
 NhQtk94UB+xlNxLepjJEpQUQchYEkwsQjvO1sjiOO40Xqm6vrPGI6FSBUBQSEDbPZWuw=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hz8ZY-007G09-Uo
 for openipmi-developer@lists.sourceforge.net; Sat, 17 Aug 2019 23:57:30 +0000
Received: by mail-oi1-f194.google.com with SMTP id g7so7350467oia.8
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 17 Aug 2019 16:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+4kqaDkTkdxjwJfGykIJFzKFcFb9t5bAS4cxiEQukwo=;
 b=MeM9K4sBwgUv7GrDdQQYL9AuDEH3BKj3S0yNQNDREAP8LRBHQGb4nmaOgrvTCgS7jO
 +rsg4I6LcyYFO5fhvwqv/zgpLj6FQtcwaNl6SXcelouDt0jpX7XCIyzwoLjhDxmjFo2H
 yoXz+dLym56beY3WndVw6psXTPbuwN5gwehImbACv4HANEfaPg8UnRZagMBDIPYfH8Av
 tJ200lvLQ6NksADIl9kh4kxNMRaBZ9tZTR5iAOAkSyCAgu5x2grfogC7V27FKgoTvE4/
 Wc9kU9rdCy3mI9rGC9kZgw8xo6iHg7PAZ+mLfNBeo0FrstDwbmpnEKfSSq7rjt4QKDcj
 gcgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=+4kqaDkTkdxjwJfGykIJFzKFcFb9t5bAS4cxiEQukwo=;
 b=pprDZISXP/0ykInYgVulno6bLmpKklYZTcIj414OXzAPIJRiMv1iMhNTycZY2UVwv0
 /cvBb8iCLnGEqfyR+FZV/KzZzyoWH7KkIjcZSsiUolEsg1uaMMXI0NoHNMW8PzYtn6FQ
 /PVkvS5m/Tx8ZDG/tCy23OT7EQoGWZyaE/UtfCFhlar+uHxPxzCIiyoCcKTgJuPU44+k
 u63miY+sFHol+7aQimC6y0AljXmAh8sbvdif8qiOspxOlHUtggvcc6z1JeWJwtwDtO1c
 1jgVsZEkmhhcZziKEcvN2l+wEVrw72ABXjsV+VWs6Gcs2wy++Dy19B0vGExHGYE7NfsC
 uAGQ==
X-Gm-Message-State: APjAAAXR4rYgkct25irZbwjlkEorXpj2cdnF95ZF1cYaj3o3dC8ANewY
 rNOtS+eCPzLVOR3HWgp0gXpVT/8=
X-Google-Smtp-Source: APXvYqz5FWpChraj6xu7fIEakij8FTAIT9pRDYwx5lRykql2yIHKV2oMiYBzPAYGg4bvDrcI9XVQAw==
X-Received: by 2002:aca:1803:: with SMTP id h3mr8768683oih.24.1566086238303;
 Sat, 17 Aug 2019 16:57:18 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k12sm2690016oij.21.2019.08.17.16.57.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 16:57:17 -0700 (PDT)
Received: from minyard.net (t430m.minyard.net [192.168.27.3])
 by serve.minyard.net (Postfix) with ESMTPSA id BBE551800D0;
 Sat, 17 Aug 2019 23:57:14 +0000 (UTC)
Date: Sat, 17 Aug 2019 18:57:13 -0500
From: Corey Minyard <minyard@acm.org>
To: Kamlakant Patel <kamlakantp@marvell.com>
Message-ID: <20190817235713.GK5001@minyard.net>
References: <1565345092-32685-1-git-send-email-kamlakantp@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565345092-32685-1-git-send-email-kamlakantp@marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marvell.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hz8ZY-007G09-Uo
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi_ssif: avoid registering
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

On Fri, Aug 09, 2019 at 10:05:18AM +0000, Kamlakant Patel wrote:
> It is possible that SSIF interface entry is present in both DMI and ACPI
> tables. In SMP systems, in such cases it is possible that ssif_probe could
> be called simultaneously from i2c interface (from ACPI) and from DMI on
> different CPUs at kernel boot. Both try to register same SSIF interface
> simultaneously and result in race.

Sorry this took so long.  But it looks good and passes basic tests, I've
added to my next tree.

Thanks,

-corey

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
> Changes since v1:
>  - Avoid using separate list for handling ACPI entries.
>  - This patch adds ACPI entry also to the ssif_infos list.
>  
>  drivers/char/ipmi/ipmi_ssif.c | 78 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 305fa505..6ca3ebe 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1603,6 +1603,76 @@ static void test_multipart_messages(struct i2c_client *client,
>  #define GLOBAL_ENABLES_MASK (IPMI_BMC_EVT_MSG_BUFF | IPMI_BMC_RCV_MSG_INTR | \
>  			     IPMI_BMC_EVT_MSG_INTR)
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
> +
> +static int ssif_client_match(struct ssif_addr_info *info,
> +			      struct i2c_client *client)
> +{
> +	if (!info->client)
> +		return false;
> +
> +	if (!strcmp(info->adapter_name, client->adapter->name) &&
> +		   (info->binfo.addr == client->addr))
> +		return true;
> +
> +	return false;
> +}
> +
> +static int ssif_update_infos(struct ssif_addr_info *info,
> +			     struct i2c_client *client)
> +{
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
> +		if (ssif_client_match(info, client)) {
> +			if (info->addr_src == SI_SMBIOS &&
> +			    ssif_info->addr_source == SI_SMBIOS)
> +				return 0;
> +			if (info->addr_src == SI_ACPI)
> +				return -EEXIST;
> +
> +			if (ssif_info->addr_source == SI_ACPI &&
> +			    info->addr_src == SI_SMBIOS) {
> +				dev_info(&client->dev,
> +					 "Removing %s-specified SSIF interface in favor of ACPI\n",
> +					 ipmi_addr_src_to_str(info->addr_src));
> +				ssif_remove_dup(info->client);
> +				goto update_list;
> +			}
> +		} else
> +			continue;
> +	}
> + update_list:
> +	return ssif_update_infos(info, client);
> +}
> +
>  static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  {
>  	unsigned char     msg[3];
> @@ -1614,6 +1684,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  	u8		  slave_addr = 0;
>  	struct ssif_addr_info *addr_info = NULL;
>  
> +	mutex_lock(&ssif_infos_mutex);
>  	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
>  	if (!resp)
>  		return -ENOMEM;
> @@ -1639,6 +1710,12 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  		}
>  	}
>  
> +	if (ssif_check_and_remove(client, ssif_info)) {
> +		kfree(resp);
> +		kfree(ssif_info);
> +		mutex_unlock(&ssif_infos_mutex);
> +		return 0;
> +	}
>  	slave_addr = find_slave_address(client, slave_addr);
>  
>  	dev_info(&client->dev,
> @@ -1851,6 +1928,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
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
