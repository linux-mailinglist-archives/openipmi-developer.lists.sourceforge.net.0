Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5A4CB0E49
	for <lists+openipmi-developer@lfdr.de>; Tue, 09 Dec 2025 19:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oiQsFalqwqloWdBmRYS9VMRh+IOn8P+4OITjvGUMfAI=; b=jYt2kWlIUNMLhE6brgJUe4S+Au
	DPsFVF9hb3M1OrjfrkNXF3rGnCtn7Tu3W+m56KFCFff5hhoJUdtmBiCCOyPrL2e32Motj4shBHh5C
	A2VzNz4a5Zb8Dsx2pu0eULGgcUagw4HrOaU6ogIm7oO4O7oAQ0niomnA5AxvsNZbqtoA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vT2uh-0000Qw-8I;
	Tue, 09 Dec 2025 18:58:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1vT2uf-0000Qp-Uk
 for openipmi-developer@lists.sourceforge.net;
 Tue, 09 Dec 2025 18:58:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zG4ZYl63VQWorvQhzWTC867N8r+SmWuwvcMB/qJOAbk=; b=UyH/pJbFw0B3qPK7idj8KYTsIa
 YE5DJ3DwcoBEV2bG7wZ+elKlr37n1KMaK3eOgBXtCkMQH5JR1XcV/bk5gng9mz1fx4hNKmILESUuV
 ZblkEnOEuTqkv9KVvW9TBBCF7p5vIyL9e+djF8V1j513j3NjGd5etFOCAjYOLzaxRoLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zG4ZYl63VQWorvQhzWTC867N8r+SmWuwvcMB/qJOAbk=; b=HpGFfqHov1jGZErjN4vr/adqKf
 HKIU/tlpmXFFffNTrOyBPs7oXZy7lhVMoHXE6gxIdUU2YCUAreSjsLdZS2xZzrmjupNP+RT4DSc5u
 4u07SDWz7RFO2GN8m7oSiw0362cjhXcxqMvqCyURjL/sxSlLnwksnQkhs6ODdFsBwuus=;
Received: from mgamail.intel.com ([198.175.65.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vT2uf-0007pL-60 for openipmi-developer@lists.sourceforge.net;
 Tue, 09 Dec 2025 18:58:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765306698; x=1796842698;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/R2b+c2Djj+Nr/3dJwUquZPYWsnsbW4lIXCs17tYU+w=;
 b=RqzYSuYd3cvm3Cmbs1OSq2DHPOiosf/FH7XtxWyKx4n9Acz05mS0T1j3
 /F/Co/kyBXrjGaaKydeeO1Pyawvc3ufmkFaqgeHBeVhwWVmpJkDY+C5wx
 Yit7vR7EEMZMJWfXd7TsOvL+LNy+qhUnJgKDmNDzHgbgbNBghWFrHUA76
 U9LFTyxEcXa54bpnY3XA035bXhKYKOIGvJPn+dwiJprBZqH2MLa02mC0b
 Ph4ZPs747iJ6xPjlwVGvQObTMM/ZYZlnLdN7NPE3yJ6hj7FkHAuLTlgaK
 mRFVWv6l2UXF4u+aVlWBfYIP+oger0wwVwrPyT2mkR+ASmjrV4/Dqw0Rn w==;
X-CSE-ConnectionGUID: /8SXH2aFRbefmldyJBrIMg==
X-CSE-MsgGUID: JXItYMDHQJSEFA6c37giZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67157903"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="67157903"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 10:58:07 -0800
X-CSE-ConnectionGUID: 4l+G88yhTlCH/s3aZiA6oQ==
X-CSE-MsgGUID: FnSylMOyQkeoz9f5+WcDLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="200727253"
Received: from lkp-server01.sh.intel.com (HELO d335e3c6db51) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 09 Dec 2025 10:58:03 -0800
Received: from kbuild by d335e3c6db51 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vT2uP-000000002B9-0SNj;
 Tue, 09 Dec 2025 18:58:01 +0000
Date: Wed, 10 Dec 2025 02:57:35 +0800
From: kernel test robot <lkp@intel.com>
To: Tony Hutter <hutter2@llnl.gov>, Lukas Wunner <lukas@wunner.de>,
 Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <202512100217.dWKoNRzG-lkp@intel.com>
References: <d422a22c-a6fe-4543-ae16-67d64260e0cf@llnl.gov>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d422a22c-a6fe-4543-ae16-67d64260e0cf@llnl.gov>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tony,
 kernel test robot noticed the following build warnings:
 [auto build test WARNING on pci/next] [also build test WARNING on
 pci/for-linus
 linus/master v6.18 next-20251209] [If your patch is applied to the wrong
 git tree, kindly drop us a note. And when submi [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vT2uf-0007pL-60
Subject: Re: [Openipmi-developer] [PATCH v7] Introduce Cray ClusterStor
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
Cc: minyard@acm.org, alok.a.tiwari@oracle.com, oe-kbuild-all@lists.linux.dev,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, corey@minyard.net,
 linux-pci@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Tony,

kernel test robot noticed the following build warnings:

[auto build test WARNING on pci/next]
[also build test WARNING on pci/for-linus linus/master v6.18 next-20251209]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Tony-Hutter/Introduce-Cray-ClusterStor-E1000-NVMe-slot-LED-driver/20251209-094846
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/d422a22c-a6fe-4543-ae16-67d64260e0cf%40llnl.gov
patch subject: [PATCH v7] Introduce Cray ClusterStor E1000 NVMe slot LED driver
config: arm-allyesconfig (https://download.01.org/0day-ci/archive/20251210/202512100217.dWKoNRzG-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251210/202512100217.dWKoNRzG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512100217.dWKoNRzG-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/pci/hotplug/pciehp_craye1k.c: In function 'craye1k_get_attention_status':
>> drivers/pci/hotplug/pciehp_craye1k.c:570:25: warning: variable 'craye1k' set but not used [-Wunused-but-set-variable]
     570 |         struct craye1k *craye1k;
         |                         ^~~~~~~


vim +/craye1k +570 drivers/pci/hotplug/pciehp_craye1k.c

   565	
   566	int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
   567					 u8 *status)
   568	{
   569		int rc;
 > 570		struct craye1k *craye1k;
   571	
   572		if (mutex_lock_interruptible(&craye1k_lock) != 0)
   573			return -EINTR;
   574	
   575		if (!craye1k_global) {
   576			/* Driver isn't initialized yet */
   577			mutex_unlock(&craye1k_lock);
   578			return -EOPNOTSUPP;
   579		}
   580	
   581		craye1k = craye1k_global;
   582	
   583		rc =  __craye1k_get_attention_status(hotplug_slot, status, true);
   584	
   585		mutex_unlock(&craye1k_lock);
   586		return rc;
   587	}
   588	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
