Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A04896ABFF
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 Sep 2024 00:18:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1slbr4-00059x-0F;
	Tue, 03 Sep 2024 22:18:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <helgaas@kernel.org>) id 1slbr2-00059p-BS
 for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Sep 2024 22:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ce1SR95PEXatAt4+AguPYQ6z52cfc4qVXucagdZgv4A=; b=OWD6fp9D15O3yeRWYDz5Ki7qjG
 2rYjUvyB4NA6mCcwjpDIRqE0xtmo+v65xpKmg5Le+n3V+luwBEg/KOrU3w1Fx8SXeAGE42xwuz4DC
 rsFLUKeSCOodsxqghwO6eMv+mUHVPn/4cFSLg1j9D5erTP1Vq2MLA/xeJBN9LWXQOEqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ce1SR95PEXatAt4+AguPYQ6z52cfc4qVXucagdZgv4A=; b=T
 vv5odwkvjqLtX/zQluMjue7VIrVMK/wPY6IwzHs3VipNG0ebFT3TwSlJC18m9d+wtBiPgRYviTDGO
 oPzSGC9XQeUj0eXtp+VxC5gZXp2VSxP0sn2ejzSRT4xF7FwE32WzpyuIflSdN8od2b4baWhKb2X8k
 ab7VvmDLKX+CibCA=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slbr2-0006zG-0k for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Sep 2024 22:18:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0E3FEA43FCB;
 Tue,  3 Sep 2024 22:18:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A706DC4CEC4;
 Tue,  3 Sep 2024 22:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1725401901;
 bh=ofGtKLeOINGZt+upXE0xfK5KYPswpVR/C0fqSZ1f660=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=gke3Wjn5dqoKGbiIjlmeVKG/Uji8+RsT/iTji1DWda8O2EOneTnCfE9IYIQBE3xLL
 9Hq23w02oVgePst9seHWNuObDevufpAOqki9LRTc9SsIa7fLr5xfcQcaBsfKdxZ7LQ
 9b3Ah99gYGoaOd5srztlbqgm/o+tDoYmvGiyKrV+Pd/2/Ln8GnNHkVKEdOswfPoUFf
 MtjadBFzjSmGfp7fMtkg1K8GFtVkHQH2VZJQdqwsdeTeoo08EuFz0qBl7R5fng2e+q
 0GCeKDKBBdXZhRUJKSrnnpJ+dQtdqy+KmM9GbXqKMd283c0QSE78kIyWL/zN37r7aC
 0CHE2RsDryp0A==
Date: Tue, 3 Sep 2024 17:18:20 -0500
To: Tony Hutter <hutter2@llnl.gov>
Message-ID: <20240903221820.GA26364@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40c7776f-b168-4cbe-a352-122e56fe7b31@llnl.gov>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 27, 2024 at 02:03:48PM -0700, Tony Hutter wrote:
 > Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
 > The driver provides hotplug attention status callbacks for the [...] 
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1slbr2-0006zG-0k
Subject: Re: [Openipmi-developer] [PATCH] PCI: Introduce Cray ClusterStor
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
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Aug 27, 2024 at 02:03:48PM -0700, Tony Hutter wrote:
> Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
> The driver provides hotplug attention status callbacks for the 24 NVMe
> slots on the E1000.  This allows users to access the E1000's locate and
> fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> entries.  This driver uses IPMI to communicate with the E1000 controller to
> toggle the LEDs.

I hope/assume the interface is the same as one of the others, i.e.,
the existing one added for NVMe behind VMD by
https://git.kernel.org/linus/576243b3f9ea ("PCI: pciehp: Allow
exclusive userspace control of indicators") or the new one for NPEM
and the _DSM at
https://lore.kernel.org/linux-pci/20240814122900.13525-3-mariusz.tkaczyk@linux.intel.com/

I suppose we intend that the ledmon utility will be able to drive
these LEDs?  Whatever the user, we should try to minimize the number
of different interfaces for this functionality.

A few minor random comments from a quick look below.

> +config HOTPLUG_PCI_PCIE_CRAY_E1000
> +	tristate "PCIE Hotplug extensions for Cray ClusterStor E1000"

s/PCIE/PCIe/

> +static ssize_t craye1k_show(struct kobject *kobj, struct kobj_attribute *kattr,
> +			    char *buf);
> +static ssize_t craye1k_store(struct kobject *kobj, struct kobj_attribute *kattr,
> +			     const char *buf,
> +			     size_t count);
> +static void craye1k_new_smi(int iface, struct device *dev);
> +static void craye1k_smi_gone(int iface);
> +static void craye1k_msg_handler(struct ipmi_recv_msg *msg, void *user_msg_data);

Is it possible to reorder the function implementations such that these
forward declarations are not needed?  That's the typical Linux style, so
that ordering will be more familiar to readers.

> +static atomic64_t *craye1k_lookup_stat(struct kobject *kobj, const char *name)
> +{
> +	struct craye1k *craye1k;
> +	struct device *dev;
> +	int i;
> +
> +	/* Lookup table for name -> atomic64_t offset */
> +	const struct {
> +		const char *name;
> +		size_t offset;
> +	} table[] = {
> +		CRAYE1K_TABLE(check_primary),
> +		CRAYE1K_TABLE(check_primary_failed),
> +		CRAYE1K_TABLE(was_already_primary),
> +		CRAYE1K_TABLE(was_not_already_primary),
> +		CRAYE1K_TABLE(set_primary),
> +		CRAYE1K_TABLE(set_initial_primary_failed),
> +		CRAYE1K_TABLE(set_primary_failed),
> +		CRAYE1K_TABLE(set_led_locate_failed),
> +		CRAYE1K_TABLE(set_led_fault_failed),
> +		CRAYE1K_TABLE(set_led_readback_failed),
> +		CRAYE1K_TABLE(set_led_failed),
> +		CRAYE1K_TABLE(get_led_failed),
> +		CRAYE1K_TABLE(completion_timeout),
> +		CRAYE1K_TABLE(wrong_msgid),
> +		CRAYE1K_TABLE(request_failed)
> +	};

Looks like possibly this table could be static instead of being on the
stack?

> + * __craye1k_set_primary() - Tell the BMC we want to be the primary server
> + *
> + * An E1000 board has two physical servers on it.  In order to set a slot
> + * NVMe LED, this server needs to first tell the BMC that it's the primary
> + * server.
> + *
> + * Returns: 0 on success, 1 otherwise.
> + */
> +

Spurious blank line.

> +static int __craye1k_set_primary(struct craye1k *craye1k)

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
> +	atomic64_inc(&craye1k->check_primary);
> +	if (rc == 0x1)
> +		return 1;   /* success */
> +
> +	atomic64_inc(&craye1k->check_primary_failed);
> +	return 0;   /* We are not the primary server node */
> +}
> +
> +/*
> + * craye1k_set_primary() - Attempt to set ourselves as the primary server
> + *
> + * Returns: 0 on success, 1 otherwise.

Maybe return a negative error value like -EIO for failure?  Then the
caller can simply pass that return value up.  Same for
__craye1k_set_primary().

> +	 * We know that our attention status callback functions have been swapped
> +	 * into the PCI device's hotplug_slot->ops values.  We can use that
> +	 * knowledge to lookup our craye1k.
> +	 *
> +	 * To do that, we use the current hotplug_slot->ops value, which is going
> +	 * to be one of the entries in craye1k->ops[], and offset our slot number
> +	 * to get the address of craye1k->ops[0].  We then use that with
> +	 * container_of() to get craye1k.  Slots start at 1, so account for that.

99% of this file fits in 80 columns.  This and one or two other
comments use 81, which seems like a random width.  Can you reflow
these to fit in 80?

> +static int __craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
> +					  u8 *status, bool set_primary)
> +{
> +	unsigned char slot;
> +	int locate, fault;
> +	int rc = 0;
> +	struct craye1k *craye1k;
> +
> +	slot = PSN(to_ctrl(hotplug_slot));
> +	if (!(slot >= 1 && slot <= 24)) {
> +		rc = -EINVAL;
> +		goto out;

There's no cleanup at "out", so drop the "rc" and the label, use
"return -EINVAL/-EIO/etc " directly here, and then "return 0" at the
end.

> +	}
> +
> +	craye1k = craye1k_from_hotplug_slot(hotplug_slot);
> +
> +	if (set_primary) {
> +		if (craye1k_set_primary(craye1k) != 0) {
> +			rc = -EIO;
> +			goto out;
> +		}
> +	}
> +
> +	locate = craye1k_get_slot_led(craye1k, slot, true);
> +	if (locate == -1) {
> +		rc = -EINVAL;
> +		goto out;
> +	}
> +
> +	fault = craye1k_get_slot_led(craye1k, slot, false);
> +	if (fault == -1) {
> +		rc = -EINVAL;
> +		goto out;
> +	}
> +
> +	if (rc != 0)
> +		atomic64_inc(&craye1k->get_led_failed);
> +
> +	*status = locate << 1 | fault;
> +
> +out:
> +	return rc;
> +}


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
