Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5540B9FEF57
	for <lists+openipmi-developer@lfdr.de>; Tue, 31 Dec 2024 13:38:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tSbVl-0000pS-1A;
	Tue, 31 Dec 2024 12:38:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1tSbVj-0000pD-4i
 for openipmi-developer@lists.sourceforge.net;
 Tue, 31 Dec 2024 12:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oG3Z+E/1t3Sw+7G7KmpLC8TrY0DF/72YlspoxKjQGZY=; b=W4DymheEykOI5u16UkeCT7onPW
 C6bfazExviMhTDrG2i4Qprj68j9Wg76UQbe4AaP6f9+jYCMS/QLadtYQO70X5QyXbd8/a6BgMT329
 MFAvc75CzNj+9Ei2x2UNQWvlukxev7tybQmsGuacbqhfEfdb3BBvEdIPU4gsJqumaMsg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oG3Z+E/1t3Sw+7G7KmpLC8TrY0DF/72YlspoxKjQGZY=; b=HgeMRZHpc8VFA7d/4i8M7kpMo8
 KOY8k4tCqWAKokPkRU2xgNXTWIFWiDJDSUU0v42OsJrbzC6fgHmvFPqHFsSpbb+vPUYctGWlUI1ze
 EW64EM+g8MdxaPg7L3OCIzr4XpOG0RsAR004vWLeMLqfs9QnNzTB0e/0Lh0dCPHpMvBU=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tSbVf-0003yW-1i for openipmi-developer@lists.sourceforge.net;
 Tue, 31 Dec 2024 12:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735648687; x=1767184687;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eO4FJRCM46xV+UKrRsbLkkdoDyXhlS27Mj0ITYumRtE=;
 b=EIXZsXLqQj/0u5zDTPrJGycx9zli5hTGs07NgEULSMzM0vumQ2gX7miY
 4YvfhRj3qfzgV/aO3Qa1z/6zF112hAHKwRstxvY0NP1HkIw/xaq5cDmJT
 01vpDaE+fMU5tu6cKzx4iungC5SF57NdNRr3arHFkWNAp6l1td985Mk0W
 rSBlpfz5H1GB59dkxJuGRHw3vFPIN1jZv/R4OKVk7KIn0CxW1j6qnl5S6
 8Qhq/ds4QEhbOS2NDWS2a0G4UwE9CZU8sOpe1dS03TL6DYnGUigO6V2Pf
 U5E+j/0phc26XD3kzjusAU6/1CsxTzikDkY/w8Uixf2xf/hz8jHX32Vm+ w==;
X-CSE-ConnectionGUID: x07MFa9+RC6vo02uA9HbHg==
X-CSE-MsgGUID: Dieq5clESVKzx8G+WJ/cBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="35813590"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="35813590"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 04:38:01 -0800
X-CSE-ConnectionGUID: sMd/QGpVSAa/dpWzn+5Llw==
X-CSE-MsgGUID: /wIZTnzGSxiLz8HU51MmMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="131982658"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 31 Dec 2024 04:37:56 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tSbVS-00076l-10;
 Tue, 31 Dec 2024 12:37:54 +0000
Date: Tue, 31 Dec 2024 20:37:10 +0800
From: kernel test robot <lkp@intel.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Message-ID: <202412311950.Ij7v1vKv-lkp@intel.com>
References: <a4cfdeed1a91a7a12c7ebe56bed2ba94991c4065.1735550269.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4cfdeed1a91a7a12c7ebe56bed2ba94991c4065.1735550269.git.zhoubinbin@loongson.cn>
X-Spam-Score: -4.7 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Binbin,
 kernel test robot noticed the following build warnings:
 [auto build test WARNING on linus/master] [also build test WARNING on
 v6.13-rc5]
 [cannot apply to cminyard-ipmi/for-next lee-mfd/for-mfd-next
 lee-mfd/for-mfd-fixes
 next-20241220] [If your patch is app [...] 
 Content analysis details:   (-4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.21 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.21 listed in sa-accredit.habeas.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tSbVf-0003yW-1i
Subject: Re: [Openipmi-developer] [PATCH v1 2/4] ipmi: Add Loongson-2K BMC
 support
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
Cc: Chong Qiao <qiaochong@loongson.cn>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, loongarch@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Binbin,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on v6.13-rc5]
[cannot apply to cminyard-ipmi/for-next lee-mfd/for-mfd-next lee-mfd/for-mfd-fixes next-20241220]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/mfd-ls2kbmc-Introduce-Loongson-2K-BMC-MFD-Core-driver/20241230-174205
base:   linus/master
patch link:    https://lore.kernel.org/r/a4cfdeed1a91a7a12c7ebe56bed2ba94991c4065.1735550269.git.zhoubinbin%40loongson.cn
patch subject: [PATCH v1 2/4] ipmi: Add Loongson-2K BMC support
config: loongarch-randconfig-r123-20241231 (https://download.01.org/0day-ci/archive/20241231/202412311950.Ij7v1vKv-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.2.0
reproduce: (https://download.01.org/0day-ci/archive/20241231/202412311950.Ij7v1vKv-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412311950.Ij7v1vKv-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/char/ipmi/ipmi_si_ls2k.c:110:38: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected struct ls2k_kcs_data *ik @@     got void [noderef] __iomem *const addr @@
   drivers/char/ipmi/ipmi_si_ls2k.c:110:38: sparse:     expected struct ls2k_kcs_data *ik
   drivers/char/ipmi/ipmi_si_ls2k.c:110:38: sparse:     got void [noderef] __iomem *const addr
   drivers/char/ipmi/ipmi_si_ls2k.c:168:38: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected struct ls2k_kcs_data *ik @@     got void [noderef] __iomem *const addr @@
   drivers/char/ipmi/ipmi_si_ls2k.c:168:38: sparse:     expected struct ls2k_kcs_data *ik
   drivers/char/ipmi/ipmi_si_ls2k.c:168:38: sparse:     got void [noderef] __iomem *const addr
>> drivers/char/ipmi/ipmi_si_ls2k.c:226:24: sparse: sparse: symbol 'ipmi_ls2k_platform_driver' was not declared. Should it be static?

vim +110 drivers/char/ipmi/ipmi_si_ls2k.c

   106	
   107	static unsigned char ls2k_mem_inb(const struct si_sm_io *io,
   108					  unsigned int offset)
   109	{
 > 110		struct ls2k_kcs_data *ik = io->addr;
   111		int inb = 0;
   112	
   113		if (ik->version == 0)
   114			inb = intf_sim_inb_v0(ik, offset);
   115		else if (ik->version == 1)
   116			inb = intf_sim_inb_v1(ik, offset);
   117	
   118		return inb;
   119	}
   120	
   121	static void intf_sim_outb_v0(struct ls2k_kcs_data *ik, unsigned int offset,
   122				     unsigned char val)
   123	{
   124		if (ls2k_get_ibf(ik))
   125			return;
   126	
   127		switch (offset & BIT(0)) {
   128		case 0:
   129			ik->reg.data_in = val;
   130			ik->reg.status &= ~LS2K_KCS_STS_CMD;
   131			break;
   132	
   133		case 1:
   134			ik->reg.cmd = val;
   135			ik->reg.status |= LS2K_KCS_STS_CMD;
   136			break;
   137		}
   138	
   139		ls2k_set_ibf(ik, 1);
   140		ik->write_req++;
   141	}
   142	
   143	static void intf_sim_outb_v1(struct ls2k_kcs_data *ik, unsigned int offset,
   144				     unsigned char val)
   145	{
   146		if (ik->fifo.ibfh != ik->fifo.ibft)
   147			return;
   148	
   149		switch (offset & BIT(0)) {
   150		case 0:
   151			ik->reg.data_in = val;
   152			ik->cmd_data = 0;
   153			break;
   154	
   155		case 1:
   156			ik->reg.cmd = val;
   157			ik->cmd_data = 1;
   158			break;
   159		}
   160	
   161		ik->fifo.ibfh = !ik->fifo.ibft;
   162		ik->write_req++;
   163	}
   164	
   165	static void ls2k_mem_outb(const struct si_sm_io *io, unsigned int offset,
   166				  unsigned char val)
   167	{
   168		struct ls2k_kcs_data *ik = io->addr;
   169	
   170		if (ik->version == 0)
   171			intf_sim_outb_v0(ik, offset, val);
   172		else if (ik->version == 1)
   173			intf_sim_outb_v1(ik, offset, val);
   174	}
   175	
   176	static void ls2k_mem_cleanup(struct si_sm_io *io)
   177	{
   178		if (io->addr)
   179			iounmap(io->addr);
   180	}
   181	
   182	static int ipmi_ls2k_sim_setup(struct si_sm_io *io)
   183	{
   184		io->addr = ioremap(io->addr_data, io->regspacing);
   185		if (!io->addr)
   186			return -EIO;
   187	
   188		io->inputb = ls2k_mem_inb;
   189		io->outputb = ls2k_mem_outb;
   190		io->io_cleanup = ls2k_mem_cleanup;
   191	
   192		return 0;
   193	}
   194	
   195	static int ipmi_ls2k_probe(struct platform_device *pdev)
   196	{
   197		struct si_sm_io io;
   198	
   199		dev_info(&pdev->dev, "probing via ls2k platform");
   200		memset(&io, 0, sizeof(io));
   201	
   202		io.addr_source	= SI_PLATFORM;
   203		io.si_type	= SI_KCS;
   204		io.addr_space	= IPMI_MEM_ADDR_SPACE;
   205		io.io_setup	= ipmi_ls2k_sim_setup;
   206		io.addr_data	= pdev->resource[0].start;
   207		io.regspacing	= pdev->resource[0].end - pdev->resource[0].start + 1;
   208		io.regsize	= DEFAULT_REGSIZE;
   209		io.regshift	= 0;
   210		io.dev		= &pdev->dev;
   211		io.irq		= 0;
   212		if (io.irq)
   213			io.irq_setup = ipmi_std_irq_setup;
   214	
   215		dev_info(&pdev->dev, "%pR regsize %d spacing %d irq %d\n",
   216			 &pdev->resource[0], io.regsize, io.regspacing, io.irq);
   217	
   218		return ipmi_si_add_smi(&io);
   219	}
   220	
   221	static void ipmi_ls2k_remove(struct platform_device *pdev)
   222	{
   223		ipmi_si_remove_by_dev(&pdev->dev);
   224	}
   225	
 > 226	struct platform_driver ipmi_ls2k_platform_driver = {
   227		.driver = {
   228			.name = "ls2k-ipmi-si",
   229		},
   230		.probe	= ipmi_ls2k_probe,
   231		.remove	= ipmi_ls2k_remove,
   232	};
   233	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
