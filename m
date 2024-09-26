Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D30987A44
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Sep 2024 23:03:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1stve0-0007yq-Ng;
	Thu, 26 Sep 2024 21:03:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <helgaas@kernel.org>) id 1stvdt-0007y0-9y
 for openipmi-developer@lists.sourceforge.net;
 Thu, 26 Sep 2024 21:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PUQMisYmA7nGvXFwQydhEi5HIp/uTbzSyu9mMfHa5CY=; b=Aj1z4V83njKTOjgo2bGpBXeaAr
 QkMcFnFJHk4ARDP3aEYtYHto+KE1nqp2Y/iBnsgaPiRHiuz1lD8CsVcmXZYmvouOs/iD9gUsiptBw
 m325TeAh/FMTM+5eyPo1ZjRCXuwCGMaqgeVTe67RQDQ6eAgUjECdBeIZkTY4q0ZUjFA0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PUQMisYmA7nGvXFwQydhEi5HIp/uTbzSyu9mMfHa5CY=; b=e
 zP+se9yaqKtdjdwxYoPUh8cSNqPGZ4c8J8NWzrHhx7VzAQnLP9/oSwMGcpVAdjgBP55J7MeFR+4VD
 l74opRdvNedhELqhjQ4JWbOG47K1LNM9S7+AiAG+Yxe+9gzgqnDU6n52JOF8tl3SMF6C0WPjpaoIq
 AsKjdnWtejAn86jY=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stvdo-00068H-UN for openipmi-developer@lists.sourceforge.net;
 Thu, 26 Sep 2024 21:03:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0B0A6A43E22;
 Thu, 26 Sep 2024 21:02:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81618C4CEC5;
 Thu, 26 Sep 2024 21:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727384581;
 bh=mUzioz2uRVxCDo1dm+jClKnYGG1J3gCE1iHAmDNw75Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=nzySU76T6d09NUJBnrui5VuWIjSR0vKw/zDhur5n0W/Wv+MWOsDP284K4avN7YrH9
 1iJSO3gEFvI0NvRwjF0noTePKMn6XQN05xfMtY9/88wWOgeeQYSple7TJrX6j/vMyd
 fvIzOUH02SRfb8fGigwS1k6dOS8BgGkCiV+PhhkGT0W8O1vUQfpGDnfBUjIwQ/0WoC
 30EvjUJ6Ebtlsn1CzSsHFpU2sEjsh2drvIN2iX9mHnA/F/ZJWJVogEJW6kqZZoeDvV
 PGCM8vpdWcCqVzv7tQrt4RWha6ZEfDGUnVZprVG34UsxbX3xoEZhpVmj7rw2nkb6MM
 83wPUixH68Z8Q==
Date: Thu, 26 Sep 2024 16:02:59 -0500
To: Tony Hutter <hutter2@llnl.gov>
Message-ID: <20240926210259.GA13456@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f35eb96-3458-45d2-a31d-7813ae4e7260@llnl.gov>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 23, 2024 at 05:06:05PM -0700, Tony Hutter wrote:
 > Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
 > The driver provides hotplug attention status callbacks for the [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1stvdo-00068H-UN
Subject: Re: [Openipmi-developer] [PATCH v2] PCI: Introduce Cray ClusterStor
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
From: Bjorn Helgaas via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Bjorn Helgaas <helgaas@kernel.org>
Cc: minyard@acm.org, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Sep 23, 2024 at 05:06:05PM -0700, Tony Hutter wrote:
> Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
> The driver provides hotplug attention status callbacks for the 24 NVMe
> slots on the E1000.  This allows users to access the E1000's locate and
> fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> entries.  This driver uses IPMI to communicate with the E1000 controller
> to toggle the LEDs.

I don't quite understand what the E1000 is and where this code runs.
Since you have a DMI check for DMI_PRODUCT_NAME "VSSEP1EC", I assume
E1000 is an attached storage controller, and this driver is part of an
embedded OS running inside the E1000 itself, *not* on the system to
which the E1000 is attached?

I guess this "attention" file is the one implemented by
attention_write_file() at
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/pci/hotplug/pci_hotplug_core.c?id=v6.11#n163,
right?

The existing implementations of set_attention_status() interpret the
value written as:

  0 = OFF
  1 = ON
  2 = blink (ampere, ibmphp, pciehp, rpaphp, shpchp)
  other values are no-op, OFF, or ON depending on the driver

I *think* this one is:

  0 = fault LED OFF, locate LED OFF
  1 = fault LED ON,  locate LED OFF
  2 = fault LED OFF, locate LED ON
  3 = fault LED ON,  locate LED ON
  other values alias the above (interpreted as value & 0x3)

All this should have already been documented in
Documentation/ABI/testing/sysfs-bus-pci along with the other similar
attributes.  I guess since we failed to document them in the past,
this would be a good chance to do it.

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

The sysfs "attention" interface already exists, so I sort of see your
point, although it can't work exactly the same with different
enclosures because they only have a single LED that can be OFF, ON, or
blinking.  And of course, "attention" can't support all the additional
indications NPEM and the _DSM support.

A few mostly superficial code comments below.

> +config HOTPLUG_PCI_PCIE_CRAY_E1000
> +	bool "PCIe Hotplug extensions for Cray ClusterStor E1000"
> +	depends on ACPI_PCI_SLOT && HOTPLUG_PCI_PCIE && IPMI_HANDLER=y

What's the ACPI_PCI_SLOT connection?  I don't see the dependency.

> +	help
> +	  Say Y here if you have a Cray ClusterStor E1000 and want to control
> +	  your NVMe slot LEDs.  Without this driver is it not possible
> +	  to control the fault and locate LEDs on the E1000's 24 NVMe slots.

If my guess about where this driver runs is correct, this is a little
misleading.  A user with a system that has an E1000 attached to it
would read this and think the driver would be useful on the system to
which the E1000 is attached.  But IIUC, it's only relevant to the
embedded processor *inside* the E1000.

> +++ b/drivers/pci/hotplug/pciehp_core.c
> @@ -73,6 +73,13 @@ static int init_slot(struct controller *ctrl)
>  		ops->get_attention_status = pciehp_get_raw_indicator_status;
>  		ops->set_attention_status = pciehp_set_raw_indicator_status;
>  	}
> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> +	if (is_craye1k_slot(ctrl)) {
> +		/* slots 1-24 on Cray E1000s are controlled differently */
> +		ops->get_attention_status = craye1k_get_attention_status;
> +		ops->set_attention_status = craye1k_set_attention_status;
> +	}
> +#endif

I'm not really thrilled about dropping device-specific code in here,
but I don't have a better suggestion yet.

> @@ -404,6 +411,11 @@ int __init pcie_hp_init(void)
>  	pr_debug("pcie_port_service_register = %d\n", retval);
>  	if (retval)
>  		pr_debug("Failure to register service\n");
> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> +	retval = craye1k_init();
> +	if (retval)
> +		pr_debug("Failure to register Cray E1000 extensions");
> +#endif

> + * craye1k_do_message() - Send the message in 'craye1k' and wait for a response
> + *
> + * Context: craye1k->lock is already held.
> + * Return: 0 on success, non-zero on error.
> + */
> +static int craye1k_do_message(struct craye1k *craye1k)
> +{
> +	int rc;
> +	long rc2;
> +	struct completion *read_complete = &craye1k->read_complete;
> +	unsigned long tout = msecs_to_jiffies(craye1k->completion_timeout_ms);
> +
> +	rc = craye1k_send_message(craye1k);
> +	if (rc == 0) {
> +		rc2 = wait_for_completion_killable_timeout(read_complete, tout);
> +		if (rc2 == 0) {
> +			craye1k->completion_timeout++;
> +			rc = -ETIME;
> +		}
> +	}
> +
> +	if (craye1k->rx_result == IPMI_UNKNOWN_ERR_COMPLETION_CODE || rc2 <= 0)
> +		rc = -1;
> +
> +	return rc;

This doesn't make sense to me.

If craye1k_send_message() fails (returns non-zero), we test both
craye1k->rx_result and rc2, which are uninitialized AFAICS.

If wait_for_completion_killable_timeout() returns "rc2 <= 0" (timeout
or interrupted), it looks like we always return -1, so I don't know
why we mention -ETIME in the middle.

And it doesn't look safe to test craye1k->rx_result because it's only
valid if craye1k_msg_handler() has called
complete(&craye1k->read_complete).

I think this might be easier to read as below.  I don't *guarantee*
that it's equivalent, but it seems like it on first glance:

  rc = craye1k_send_message(craye1k);
  if (rc)
    return rc;

  rc2 = wait_for_completion_killable_timeout(read_complete, tout);
  if (rc2 > 0)
    return 0;         /* normal path, got response before timeout */

  if (rc2 == 0)
    craye1k->completion_timeout++;

  return -1;          /* timed out or interrupted */

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
> +	memcpy(recv_data, craye1k->rx_msg_data, recv_data_len);

Seems wrong to copy into recv_data if this failed?

Looks like craye1k_do_command_and_netfn() is the only caller, and it
supplies recv_data == NULL and recv_data_len = 0, so why do they
exist?

> +static int craye1k_do_command(struct craye1k *craye1k, u8 cmd, u8 *send_data,
> +			      u8 send_data_len)
> +{
> +	return (craye1k_do_command_and_netfn(craye1k, CRAYE1K_CMD_NETFN, cmd,
> +					     send_data, send_data_len));

Unnecessary outer parens.

> + * craye1k_is_primary() - Are we the primary server?
> + *
> + * Returns: 1 if we are the primary server, 0 otherwise.
> + */
> +static int craye1k_is_primary(struct craye1k *craye1k)
> +{
> +	u8 byte = 0;
> +	int rc;
> +
> +	/* Response byte is 0x1 on success */
> +	rc = craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, &byte, 1);
> +	craye1k->check_primary++;
> +	if (rc == 0x1)
> +		return 1;   /* success */

This isn't actually *success*, it's more like "true"; this function
just answers a yes/no question and could return boolean.

If there's a possibility of failure, i.e., if "we can't tell whether
we're primary" is a possible outcome, there would have to be three
possible return values.

> +	craye1k->check_primary_failed++;
> +	return 0;   /* We are not the primary server node */
> +}
> +
> +/*
> + * craye1k_set_primary() - Attempt to set ourselves as the primary server
> + *
> + * Returns: 0 on success, 1 otherwise.

Why 1 for failure here, <0 for failure elsewhere?  Negative -ERRNO
return value for failure is the usual convention.

Bjorn


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
