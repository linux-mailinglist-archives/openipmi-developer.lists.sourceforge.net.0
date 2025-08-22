Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 454A5B324C0
	for <lists+openipmi-developer@lfdr.de>; Fri, 22 Aug 2025 23:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8oAEZBsTVl39LxHnjeUxRWvIJwZTNjmI3yOsNeKIDnI=; b=R5/JpUTNyi8AlOarANa/BrisRu
	b0lwbPgPAn4mhAyi6ZG5t9IxME0oFHpWu06AaYxplCqrw8QKi+SxoMUkmAANIA8GqDG/5C2HaPADQ
	usP5/jgHCvea0c3Z4ukJAynusWG4AcvgMCaOOAmZKhCs+82yswNA37aYx5NYIzL7R2yg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1upZi7-0002L1-Js;
	Fri, 22 Aug 2025 21:54:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1upZi5-0002Kt-D5
 for openipmi-developer@lists.sourceforge.net;
 Fri, 22 Aug 2025 21:54:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kraZQwgGsqActCzVMqrdt2pTEU4/LJMkbYTSib4v1/0=; b=Ce59ct0eLK1mj/2ffVqnKelNVP
 VbFbbVRxeYPk0kPS+UENm6KYqh6N+KmtWG4zGpGNqiTyoBWgo6SIiSYxtnTwO58FLDOOcg8ajgbBO
 v6NzBzOwgonZPfU6hoZ7Skv1voF01y2HtexeKgnWrP2QPGU5QcIHXEzsYLN1QN2e9t14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kraZQwgGsqActCzVMqrdt2pTEU4/LJMkbYTSib4v1/0=; b=WR6JBTbhy2O4CkII/D0GtiEnwM
 laaJxjl3TW2JZwWC12pLrEzgaaXMJADFTBuyThpT+6V+8rhlEcH7MGoHukU8AJu0hLbix1mSL5EUI
 phK71Eeoc41Hj/tmY4TRqdho14KlPCKoBAg48eQDZGFYQ0XLmz2QT2zdeylxN658IiQI=;
Received: from mail-oa1-f52.google.com ([209.85.160.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1upZi4-0002GN-5T for openipmi-developer@lists.sourceforge.net;
 Fri, 22 Aug 2025 21:54:09 +0000
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-30cceb382d1so2164102fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 22 Aug 2025 14:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1755899637; x=1756504437;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kraZQwgGsqActCzVMqrdt2pTEU4/LJMkbYTSib4v1/0=;
 b=y/MZK1hy5/M1Nkv71w2xgGJ6sxl3vPwxEiMOACsmLMr21CpIF5eN8l/XE0Daxv6Tp5
 HLLjjmIZYcYYZtVmizgqXrbneNHFm0P54IBa1kejjhb4Ng2rB3rynyXYBAml7T1HRAo+
 G2y53EPFizHmiTgQuD/4WAaTw+kxyDiJD0ZBN3k/OOh/2EycXRX3q7FOysR1n8V2vp/r
 OKYnxVmrVjh0rMluPb7Ksk+Ekexdgw5HWpvU11J1Yagbh2BWG57JCwxwZPruA9+nEXIc
 Mo2TVLs9pEgrFVCFkXD2g99kwwASWoN6VmURcjLbnxuZVPo3TZjhCNc5VdsTds85TYsH
 W4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755899637; x=1756504437;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kraZQwgGsqActCzVMqrdt2pTEU4/LJMkbYTSib4v1/0=;
 b=aXAjIGErDmE2ep6Vj+2WWvOZOxThQHFdTpjRDomjziX6t9rA3ViZHUZ8A4Khy5x+bU
 tJ6znswP+o9nfToX4OAzv00FAGNC1dnv87lhedcLFLAwceIdFAUMGs7zJD14gc7sRhn1
 Y4WYJKnm/O/HSghfPfDbWQKgEKywmYvsSNiheF2wuGwiq7osBrppSLXmt8A+BUQoh4O7
 HzZhDRYjDcRDoFQCfJkUY4SEynJf84qFC2ymzF6InPf1Vm9B4aYIcCaKEQHhkTv1tAwD
 jOW6psqCK/BYrb8mx1nZ2uu3/abbpoHBef73TTTGfBI/JcOFPzS7kUfBXU/9SXwOj9uK
 ep4Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcwmhhBORV8+ZIUuRz4tKkk+8kO1Imv//rlY6+8tUiyMgsMqibyAmiGrvRJDldyvTxZ3V2rZF4d5tghFLBCRg9F3A=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyCiz/frR75vcSX5KsEJyMoyDbTh87/Exne5GFUnR9Ym84g3LOa
 o1ZNNeqiDyYI8w4aN7nmNKR1tWswmOeGiNl5R0lgbRIaOdSEvNJJWWiq/FnHzyfiLBo=
X-Gm-Gg: ASbGncuuP8SltRzv06atZxBoiohJUnM6VMYYskbF7CyKkvRQDIcfo02Uu6ehiGcUyww
 XMmg2h/POk9sGbFcubJD0o7oMS+nOQSHEXPNgBvrLpY6AtX3s6JUZ3r0bLL3/pCu9h4vNWXQI5+
 FJXAC+iiE3ZGN0jVxWoXOcaDiR5XvbBJNr41YG6emoFY80QQ/6Cyz7UXx4ENurhYwahAxhGyh6w
 MTFrJSwR2pls0vMFpINc05Mros24Vr9ncAEzPmdmDUoe6dibeHTi8sw2L73KhIq6/q2hPAFCNFm
 MBPV3mpSyHb71y49L0wKB6WV90HbYAxrrmlY/LHOfdNG1dGGifSINepl/fJgO2WRWLMgLyzZAQp
 Bmh7NqNI5/k/FNOcxpydCVqTopQ==
X-Google-Smtp-Source: AGHT+IGle2jw1xd8dLQ862DWWobTWUfXHknafLz25LxA22r/5hTCow0Z0ePt+9doHwWtGNnn7+KGwQ==
X-Received: by 2002:a05:6871:7a16:b0:30b:ae56:576d with SMTP id
 586e51a60fabf-314dce737c0mr2423251fac.29.1755899637328; 
 Fri, 22 Aug 2025 14:53:57 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:fb40:1612:1e27:b18a])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-314f7a24047sm186723fac.9.2025.08.22.14.53.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Aug 2025 14:53:55 -0700 (PDT)
Date: Fri, 22 Aug 2025 16:53:50 -0500
From: Corey Minyard <corey@minyard.net>
To: Tony Hutter <hutter2@llnl.gov>
Message-ID: <aKjm7mBDQ6VR8kWl@mail.minyard.net>
References: <e5a6290a-7dc4-43b1-838d-bf43edae1faa@llnl.gov>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5a6290a-7dc4-43b1-838d-bf43edae1faa@llnl.gov>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 22, 2025 at 02:36:34PM -0700, Tony Hutter wrote:
 > Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
 > The driver provides hotplug attention status callbacks for the [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.52 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1upZi4-0002GN-5T
Subject: Re: [Openipmi-developer] [PATCH v4] PCI: Introduce Cray ClusterStor
 E1000 NVMe slot LED driver
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
Cc: minyard@acm.org, alok.a.tiwari@oracle.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-pci@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 22, 2025 at 02:36:34PM -0700, Tony Hutter wrote:
> Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
> The driver provides hotplug attention status callbacks for the 24 NVMe
> slots on the E1000.  This allows users to access the E1000's locate and
> fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> entries.  This driver uses IPMI to communicate with the E1000 controller
> to toggle the LEDs.
> 
> Signed-off-by: Tony Hutter <hutter2@llnl.gov>
> ---
> Changes in v4:
>  - Fix typo in Kconfig: "is it" ->  "it is"
>  - Rename some #defines to CRAYE1K_SUBCMD_*
>  - Use IS_ERR() check in craye1k_debugfs_init()
>  - Return -EIO instead of -EINVAL when LED value check fails
> 
> Changes in v3:
>  - Add 'attention' values in Documentation/ABI/testing/sysfs-bus-pci.
>  - Remove ACPI_PCI_SLOT dependency.
>  - Cleanup craye1k_do_message() error checking.
>  - Skip unneeded memcpy() on failure in __craye1k_do_command().
>  - Merge craye1k_do_command_and_netfn() code into craye1k_do_command().
>  - Make craye1k_is_primary() return boolean.
>  - Return negative error code on failure in craye1k_set_primary().
> 
> Changes in v2:
>  - Integrated E1000 code into the pciehp driver as an built-in
>    extention rather than as a standalone module.
>  - Moved debug tunables and counters to debugfs.
>  - Removed forward declarations.
>  - Kept the /sys/bus/pci/slots/<slot>/attention interface rather
>    than using NPEM/_DSM or led_classdev as suggested.  The "attention"
>    interface is more beneficial for our site, since it allows us to
>    control the NVMe slot LEDs agnostically across different enclosure
>    vendors and kernel versions using the same scripts.  It is also
>    nice to use the same /sys/bus/pci/slots/<slot>/ sysfs directory for
>    both slot LED toggling ("attention") and slot power control
>    ("power").
> ---
>  Documentation/ABI/testing/sysfs-bus-pci |  21 +
>  MAINTAINERS                             |   5 +
>  drivers/pci/hotplug/Kconfig             |  10 +
>  drivers/pci/hotplug/Makefile            |   3 +
>  drivers/pci/hotplug/pciehp.h            |   7 +
>  drivers/pci/hotplug/pciehp_core.c       |  12 +
>  drivers/pci/hotplug/pciehp_craye1k.c    | 659 ++++++++++++++++++++++++
>  7 files changed, 717 insertions(+)
>  create mode 100644 drivers/pci/hotplug/pciehp_craye1k.c
> 
...snip
> diff --git a/drivers/pci/hotplug/pciehp_craye1k.c b/drivers/pci/hotplug/pciehp_craye1k.c
> new file mode 100644
> index 000000000000..72c636ceb976
> --- /dev/null
> +++ b/drivers/pci/hotplug/pciehp_craye1k.c
> @@ -0,0 +1,659 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2022-2024 Lawrence Livermore National Security, LLC
> + */
> +/*
> + * Cray ClusterStor E1000 hotplug slot LED driver extensions
> + *
> + * This driver controls the NVMe slot LEDs on the Cray ClusterStore E1000.
> + * It provides hotplug attention status callbacks for the 24 NVMe slots on
> + * the E1000.  This allows users to access the E1000's locate and fault
> + * LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs entries.
> + * This driver uses IPMI to communicate with the E1000 controller to toggle
> + * the LEDs.
> + *
> + * This driver is based off of ibmpex.c
> + */
> +
> +#include <linux/debugfs.h>
> +#include <linux/delay.h>
> +#include <linux/errno.h>
> +#include <linux/dmi.h>
> +#include <linux/ipmi.h>
> +#include <linux/ipmi_smi.h>

You shouldn't need to include ipmi_smi.h.  If you do, that's a bug on my
part.

> +#include <linux/module.h>
> +#include <linux/pci.h>
> +#include <linux/pci_hotplug.h>
> +#include <linux/random.h>
> +#include "pciehp.h"
> +
...snip
> +/*
> + * craye1k_send_message() - Send the message already setup in 'craye1k'
> + *
> + * Context: craye1k->lock is already held.
> + * Return: 0 on success, non-zero on error.
> + */
> +static int craye1k_send_message(struct craye1k *craye1k)
> +{
> +	int rc;
> +
> +	rc = ipmi_validate_addr(&craye1k->address, sizeof(craye1k->address));
> +	if (rc) {
> +		dev_err_ratelimited(craye1k->dev, "validate_addr() = %d\n", rc);
> +		return rc;
> +	}
> +
> +	craye1k->tx_msg_id++;
> +
> +	rc = ipmi_request_settime(craye1k->user, &craye1k->address,
> +				  craye1k->tx_msg_id, &craye1k->tx_msg, craye1k,
> +				  0, craye1k->ipmi_retries,
> +				  craye1k->ipmi_timeout_ms);
> +
> +	if (rc) {
> +		craye1k->request_failed++;
> +		return rc;
> +	}
> +
> +	return 0;
> +}
> +
> +/*
> + * craye1k_do_message() - Send the message in 'craye1k' and wait for a response
> + *
> + * Context: craye1k->lock is already held.
> + * Return: 0 on success, non-zero on error.
> + */
> +static int craye1k_do_message(struct craye1k *craye1k)
> +{
> +	int rc;
> +	struct completion *read_complete = &craye1k->read_complete;
> +	unsigned long tout = msecs_to_jiffies(craye1k->completion_timeout_ms);

I don't see anything that will prevent multiple messages from being sent
at one time.  What happens if two things send a message at the same time
here?

-corey

> +
> +	rc = craye1k_send_message(craye1k);
> +	if (rc)
> +		return rc;
> +
> +	rc = wait_for_completion_killable_timeout(read_complete, tout);
> +	if (rc == 0) {
> +		/* timed out */
> +		craye1k->completion_timeout++;
> +		return -ETIME;
> +	}
> +
> +	return 0;
> +}
> +
> +/*
> + * __craye1k_do_command() - Do an IPMI command
> + *
> + * Send a command with optional data bytes, and read back response bytes.
> + * Context: craye1k->lock is already held.
> + * Returns: 0 on success, non-zero on error.
> + */
> +static int __craye1k_do_command(struct craye1k *craye1k, u8 netfn, u8 cmd,
> +				u8 *send_data, u8 send_data_len, u8 *recv_data,
> +				u8 recv_data_len)
> +{
> +	int rc;
> +
> +	craye1k->tx_msg.netfn = netfn;
> +	craye1k->tx_msg.cmd = cmd;
> +
> +	if (send_data) {
> +		memcpy(&craye1k->tx_msg_data[0], send_data, send_data_len);
> +		craye1k->tx_msg.data_len = send_data_len;
> +	} else {
> +		craye1k->tx_msg_data[0] = 0;
> +		craye1k->tx_msg.data_len = 0;
> +	}
> +
> +	rc = craye1k_do_message(craye1k);
> +	if (rc == 0)
> +		memcpy(recv_data, craye1k->rx_msg_data, recv_data_len);
> +
> +	return rc;
> +}
> +
> +/*
> + * craye1k_do_command() - Do a Cray E1000 specific IPMI command.
> + * @cmd: Cray E1000 specific command
> + * @send_data:  Data to send after the command
> + * @send_data_len: Data length
> + *
> + * Context: craye1k->lock is already held.
> + * Returns: the last byte from the response or 0 if response had no response
> + * data bytes, else -1 on error.
> + */
> +static int craye1k_do_command(struct craye1k *craye1k, u8 cmd, u8 *send_data,
> +			      u8 send_data_len)
> +{
> +	int rc;
> +
> +	rc = __craye1k_do_command(craye1k, CRAYE1K_CMD_NETFN, cmd, send_data,
> +				  send_data_len, NULL, 0);
> +	if (rc != 0) {
> +		/* Error attempting command */
> +		return -1;
> +	}
> +
> +	if (craye1k->tx_msg.data_len == 0)
> +		return 0;
> +
> +	/* Return last received byte value */
> +	return craye1k->rx_msg_data[craye1k->rx_msg_len - 1];
> +}
> +
> +/*
> + * __craye1k_set_primary() - Tell the BMC we want to be the primary server
> + *
> + * An E1000 board has two physical servers on it.  In order to set a slot
> + * NVMe LED, this server needs to first tell the BMC that it's the primary
> + * server.
> + *
> + * Returns: 0 on success, non-zero on error.
> + */
> +static int __craye1k_set_primary(struct craye1k *craye1k)
> +{
> +	u8 bytes[2] = {CRAYE1K_SUBCMD_SET_PRIMARY, 1};	/* set primary to 1 */
> +
> +	craye1k->set_primary++;
> +	return craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, bytes, 2);
> +}
> +
> +/*
> + * craye1k_is_primary() - Are we the primary server?
> + *
> + * Returns: true if we are the primary server, false otherwise.
> + */
> +static bool craye1k_is_primary(struct craye1k *craye1k)
> +{
> +	u8 byte = 0;
> +	int rc;
> +
> +	/* Response byte is 0x1 on success */
> +	rc = craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, &byte, 1);
> +	craye1k->check_primary++;
> +	if (rc == 0x1)
> +		return true;   /* success */
> +
> +	craye1k->check_primary_failed++;
> +	return false;   /* We are not the primary server node */
> +}
> +
> +/*
> + * craye1k_set_primary() - Attempt to set ourselves as the primary server
> + *
> + * Returns: 0 on success, -1 otherwise.
> + */
> +static int craye1k_set_primary(struct craye1k *craye1k)
> +{
> +	int tries = 10;
> +
> +	if (craye1k_is_primary(craye1k)) {
> +		craye1k->was_already_primary++;
> +		return 0;
> +	}
> +	craye1k->was_not_already_primary++;
> +
> +	/* delay found through experimentation */
> +	msleep(300);
> +
> +	if (__craye1k_set_primary(craye1k) != 0) {
> +		craye1k->set_initial_primary_failed++;
> +		return -1;	/* error */
> +	}
> +
> +	/*
> +	 * It can take 2 to 3 seconds after setting primary for the controller
> +	 * to report that it is the primary.
> +	 */
> +	while (tries--) {
> +		msleep(500);
> +		if (craye1k_is_primary(craye1k))
> +			break;
> +	}
> +
> +	if (tries == 0) {
> +		craye1k->set_primary_failed++;
> +		return -1;	/* never reported that it's primary */
> +	}
> +
> +	/* Wait for primary switch to finish */
> +	msleep(1500);
> +
> +	return 0;
> +}
> +
> +/*
> + * craye1k_get_slot_led() - Get slot LED value
> + * @slot: Slot number (1-24)
> + * @is_locate_led: 0 = get fault LED value, 1 = get locate LED value
> + *
> + * Returns: slot value on success, -1 on failure.
> + */
> +static int craye1k_get_slot_led(struct craye1k *craye1k, unsigned char slot,
> +				bool is_locate_led)
> +{
> +	u8 bytes[2];
> +	u8 cmd;
> +
> +	bytes[0] = CRAYE1K_SUBCMD_GET_LED;
> +	bytes[1] = slot;
> +
> +	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
> +
> +	return craye1k_do_command(craye1k, cmd, bytes, 2);
> +}
> +
> +/*
> + * craye1k_set_slot_led() - Attempt to set the locate/fault LED to a value
> + * @slot: Slot number (1-24)
> + * @is_locate_led: 0 = use fault LED, 1 = use locate LED
> + * @value: Value to set (0 or 1)
> + *
> + * Check the LED value after calling this function to ensure it has been set
> + * properly.
> + *
> + * Returns: 0 on success, non-zero on failure.
> + */
> +static int craye1k_set_slot_led(struct craye1k *craye1k, unsigned char slot,
> +				unsigned char is_locate_led,
> +				unsigned char value)
> +{
> +	u8 bytes[3];
> +	u8 cmd;
> +
> +	bytes[0] = CRAYE1K_SUBCMD_SET_LED;
> +	bytes[1] = slot;
> +	bytes[2] = value;
> +
> +	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
> +
> +	return craye1k_do_command(craye1k, cmd, bytes, 3);
> +}
> +
> +static int __craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
> +					  u8 *status, bool set_primary)
> +{
> +	unsigned char slot;
> +	int locate, fault;
> +	struct craye1k *craye1k;
> +
> +	craye1k = craye1k_global;
> +	slot = PSN(to_ctrl(hotplug_slot));
> +
> +	if (set_primary) {
> +		if (craye1k_set_primary(craye1k) != 0) {
> +			craye1k->get_led_failed++;
> +			return -EIO;
> +		}
> +	}
> +
> +	locate = craye1k_get_slot_led(craye1k, slot, true);
> +	if (locate == -1) {
> +		craye1k->get_led_failed++;
> +		return -EIO;
> +	}
> +	msleep(CRAYE1K_POST_CMD_WAIT_MS);
> +
> +	fault = craye1k_get_slot_led(craye1k, slot, false);
> +	if (fault == -1) {
> +		craye1k->get_led_failed++;
> +		return -EIO;
> +	}
> +	msleep(CRAYE1K_POST_CMD_WAIT_MS);
> +
> +	*status = locate << 1 | fault;
> +
> +	return 0;
> +}
> +
> +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
> +				 u8 *status)
> +{
> +	int rc;
> +	struct craye1k *craye1k;
> +
> +	craye1k = craye1k_global;
> +
> +	if (mutex_lock_interruptible(&craye1k->lock) != 0)
> +		return -EINTR;
> +
> +	rc =  __craye1k_get_attention_status(hotplug_slot, status, true);
> +
> +	mutex_unlock(&craye1k->lock);
> +	return rc;
> +}
> +
> +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot,
> +				 u8 status)
> +{
> +	unsigned char slot;
> +	int tries = 4;
> +	int rc;
> +	u8 new_status;
> +	struct craye1k *craye1k;
> +	bool locate, fault;
> +
> +	craye1k = craye1k_global;
> +
> +	slot = PSN(to_ctrl(hotplug_slot));
> +
> +	if (mutex_lock_interruptible(&craye1k->lock) != 0)
> +		return -EINTR;
> +
> +	/* Retry to ensure all LEDs are set */
> +	while (tries--) {
> +		/*
> +		 * The node must first set itself to be the primary node before
> +		 * setting the slot LEDs (each board has two nodes, or
> +		 * "servers" as they're called by the manufacturer).  This can
> +		 * lead to contention if both nodes are trying to set the LEDs
> +		 * at the same time.
> +		 */
> +		rc = craye1k_set_primary(craye1k);
> +		if (rc != 0) {
> +			/* Could not set as primary node.  Just retry again. */
> +			continue;
> +		}
> +
> +		/* Write value twice to increase success rate */
> +		locate = (status & 0x2) >> 1;
> +		craye1k_set_slot_led(craye1k, slot, 1, locate);
> +		if (craye1k_set_slot_led(craye1k, slot, 1, locate) != 0) {
> +			craye1k->set_led_locate_failed++;
> +			continue;	/* fail, retry */
> +		}
> +
> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
> +
> +		fault = status & 0x1;
> +		craye1k_set_slot_led(craye1k, slot, 0, fault);
> +		if (craye1k_set_slot_led(craye1k, slot, 0, fault) != 0) {
> +			craye1k->set_led_fault_failed++;
> +			continue;	/* fail, retry */
> +		}
> +
> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
> +
> +		rc = __craye1k_get_attention_status(hotplug_slot, &new_status,
> +						    false);
> +
> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
> +
> +		if (rc == 0 && new_status == status)
> +			break;	/* success */
> +
> +		craye1k->set_led_readback_failed++;
> +
> +		/*
> +		 * At this point we weren't successful in setting the LED and
> +		 * need to try again.
> +		 *
> +		 * Do a random back-off to reduce contention with other server
> +		 * node in the unlikely case that both server nodes are trying to
> +		 * trying to set a LED at the same time.
> +		 *
> +		 * The 500ms minimum in the back-off reduced the chance of this
> +		 * whole retry loop failing from 1 in 700 to none in 10000.
> +		 */
> +		msleep(500 + (get_random_long() % 500));
> +	}
> +	mutex_unlock(&craye1k->lock);
> +	if (tries == 0) {
> +		craye1k->set_led_failed++;
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static bool is_craye1k_board(void)
> +{
> +	return dmi_match(DMI_PRODUCT_NAME, "VSSEP1EC");
> +}
> +
> +bool is_craye1k_slot(struct controller *ctrl)
> +{
> +	return (PSN(ctrl) >= 1 && PSN(ctrl) <= 24 && is_craye1k_board());
> +}
> +
> +int craye1k_init(void)
> +{
> +	if (!is_craye1k_board())
> +		return 0;
> +
> +	return ipmi_smi_watcher_register(&craye1k_smi_watcher);
> +}
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Tony Hutter <hutter2@llnl.gov>");
> +MODULE_DESCRIPTION("Cray E1000 NVMe Slot LED driver");
> -- 
> 2.43.7


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
