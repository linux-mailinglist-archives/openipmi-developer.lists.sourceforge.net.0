Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6192E320AB0
	for <lists+openipmi-developer@lfdr.de>; Sun, 21 Feb 2021 14:55:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lDpCP-0007SU-1c; Sun, 21 Feb 2021 13:55:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>) id 1lDpCN-0007SB-5d
 for openipmi-developer@lists.sourceforge.net; Sun, 21 Feb 2021 13:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fvCy0wuERckUT0Bbpcs0qtanzPgpEowwfKUfW3o8D70=; b=nIb9qr97s8ba205e11v8OBu9qw
 x+WwX195HawBcS18aOmVSeeFzCNbM5wO+LKb61XruodzYrT5BeztYYwrRprC6/GBms/ktPuLb23I2
 gsCLh2Gf/KoSvxrHmFoMYXQWH6xm+EC3BcXYvhDxIpGTgxJy0UIfTJDI/3mTZXWirf80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fvCy0wuERckUT0Bbpcs0qtanzPgpEowwfKUfW3o8D70=; b=LaA1zWmrK8QuNGsVd6orB5HPwL
 ULyOlFxBgMduBPYHmqeJWSq7QsEGSU8PzVL/kMCF2mJLJdSW4w8aN1HvC4wmjm64kxcytV258QmJk
 Cqe1bR6oKDA7tGJ67iYkSvyt6WOdT5xERIhVYMcqGAQr59t3FwENFFiSVRJUupgzhMjI=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lDpCC-000414-Vu
 for openipmi-developer@lists.sourceforge.net; Sun, 21 Feb 2021 13:54:56 +0000
IronPort-SDR: TioYFl3L/VJzU+RSPB9y4ICNQDUVGNBROB+db/GV2cGaIFrEye35U5plhTXwRwtXxb140Vl0VH
 Z7gl1obeMk5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9901"; a="184348209"
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; 
 d="gz'50?scan'50,208,50";a="184348209"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2021 05:54:42 -0800
IronPort-SDR: 0exhvU1FCVgYRcyM7i38dBml0IwEI74W3muZR09+TdeIfRS6JIqxdPosIcHnjLe/fsntiinpnK
 8f0Oaw3k/B4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; 
 d="gz'50?scan'50,208,50";a="365828037"
Received: from lkp-server01.sh.intel.com (HELO 48acba29b68a) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 21 Feb 2021 05:54:38 -0800
Received: from kbuild by 48acba29b68a with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lDpC2-0000Ea-78; Sun, 21 Feb 2021 13:54:38 +0000
Date: Sun, 21 Feb 2021 21:54:32 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Jeffery <andrew@aj.id.au>,
 openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Message-ID: <202102212124.Uwfx1UKq-lkp@intel.com>
References: <20210219142523.3464540-16-andrew@aj.id.au>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
In-Reply-To: <20210219142523.3464540-16-andrew@aj.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: githubusercontent.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lDpCC-000414-Vu
Subject: Re: [Openipmi-developer] [PATCH 15/19] ipmi: kcs_bmc: Add a "raw"
 character device interface
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
Cc: kbuild-all@lists.01.org, tmaimon77@gmail.com, avifishman70@gmail.com,
 venture@google.com, tali.perry1@gmail.com, robh+dt@kernel.org,
 lee.jones@linaro.org
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrew,

I love your patch! Perhaps something to improve:

[auto build test WARNING on char-misc/char-misc-testing]
[also build test WARNING on v5.11]
[cannot apply to joel-aspeed/for-next next-20210219]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Andrew-Jeffery/ipmi-Allow-raw-access-to-KCS-devices/20210219-223144
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git d19db80a366576d3ffadf2508ed876b4c1faf959
config: parisc-randconfig-r034-20210221 (attached as .config)
compiler: hppa-linux-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/8af4fb76b1183097f52d3c67196ae4dbadf508b2
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Andrew-Jeffery/ipmi-Allow-raw-access-to-KCS-devices/20210219-223144
        git checkout 8af4fb76b1183097f52d3c67196ae4dbadf508b2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=parisc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/char/ipmi/kcs_bmc_cdev_raw.c: In function 'kcs_bmc_raw_write':
>> drivers/char/ipmi/kcs_bmc_cdev_raw.c:253:10: warning: variable 'result' set but not used [-Wunused-but-set-variable]
     253 |  ssize_t result;
         |          ^~~~~~


vim +/result +253 drivers/char/ipmi/kcs_bmc_cdev_raw.c

   244	
   245	static ssize_t kcs_bmc_raw_write(struct file *filp, const char __user *buf,
   246				      size_t count, loff_t *ppos)
   247	{
   248		struct kcs_bmc_device *kcs_bmc;
   249		bool write_odr, write_str;
   250		struct kcs_bmc_raw *priv;
   251		struct device *dev;
   252		uint8_t data[2];
 > 253		ssize_t result;
   254		u8 str;
   255	
   256		priv = file_to_kcs_bmc_raw(filp);
   257		kcs_bmc = priv->client.dev;
   258		dev = priv->miscdev.this_device;
   259	
   260		if (!count)
   261			return count;
   262	
   263		if (count > 2)
   264			return -EINVAL;
   265	
   266		if (*ppos >= 2)
   267			return -EINVAL;
   268	
   269		if (*ppos + count > 2)
   270			return -EINVAL;
   271	
   272		if (copy_from_user(data, buf, count))
   273			return -EFAULT;
   274	
   275		write_odr = (*ppos == 0);
   276		write_str = (*ppos == 1) || (count == 2);
   277	
   278		spin_lock_irq(&priv->queue.lock);
   279	
   280		/* Always write status before data, we generate the SerIRQ by writing ODR */
   281		if (write_str) {
   282			/* The index of STR in the userspace buffer depends on whether ODR is written */
   283			str = data[*ppos == 0];
   284			if (!(str & KCS_BMC_STR_OBF))
   285				dev_warn(dev, "Clearing OBF with status write: 0x%x\n", str);
   286			dev_dbg(dev, "Writing status 0x%x\n", str);
   287			kcs_bmc_write_status(kcs_bmc, str);
   288		}
   289	
   290		if (write_odr) {
   291			/* If we're writing ODR it's always the first byte in the buffer */
   292			u8 odr = data[0];
   293	
   294			str = kcs_bmc_read_status(kcs_bmc);
   295			if (str & KCS_BMC_STR_OBF) {
   296				if (filp->f_flags & O_NONBLOCK) {
   297					result = -EWOULDBLOCK;
   298					goto out;
   299				}
   300	
   301				priv->writable = kcs_bmc_raw_prepare_obe(priv);
   302	
   303				/* Now either OBF is already clear, or we'll get an OBE event to wake us */
   304				dev_dbg(dev, "Waiting for OBF to clear\n");
   305				wait_event_interruptible_locked(priv->queue, priv->writable);
   306	
   307				if (signal_pending(current)) {
   308					kcs_bmc_raw_update_event_mask(priv, KCS_BMC_EVENT_TYPE_OBE, 0);
   309					result = -EINTR;
   310					goto out;
   311				}
   312	
   313				WARN_ON(kcs_bmc_read_status(kcs_bmc) & KCS_BMC_STR_OBF);
   314			}
   315	
   316			dev_dbg(dev, "Writing 0x%x to ODR\n", odr);
   317			kcs_bmc_write_data(kcs_bmc, odr);
   318		}
   319	
   320	out:
   321		spin_unlock_irq(&priv->queue.lock);
   322	
   323		return count;
   324	}
   325	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICA5iMmAAAy5jb25maWcAjDxbcyMns+/5FarNS1L1beLLbpI9p/zAMIxENLcFRpL9MqWV
tbuq2JaPJCdf/v3phrkAw8jOw8bqbqBpmr4B8+MPP07Iy2n/uD7tNuuHh38n37ZP28P6tL2f
fN09bP93EheTvFATFnP1CxCnu6eX//76vD7sjpvJx18uL3+5eH/YfJzMt4en7cOE7p++7r69
QAe7/dMPP/5Aizzh05rSesGE5EVeK7ZSN+++Pz+v3z9gX++/bTaTn6aU/jz59Mv1LxfvrDZc
1oC4+bcFTft+bj5dXF9ctIg07uBX1x8u9H9dPynJpx26b2K1ubDGnBFZE5nV00IV/cgWgucp
z1mP4uJzvSzEvIdEFU9jxTNWKxKlrJaFUIAFcfw4mWrxPkyO29PLcy+gSBRzltcgH5mVVt85
VzXLFzURwDHPuLq5vup4KrKSQ/eKSdU3SQtK0nZi7945PNWSpMoCzsiC1XMmcpbW0ztuDWxj
IsBchVHpXUbCmNXdWItiDPEBED9OGpTF1WR3nDztTyiyAV7zdo4AObTxLlZzOWxSnO/xQ6DD
mCWkSpVeMUvCLXhWSJWTjN28++lp/7T9+V3frbyVC17SQJ9lIfmqzj5XrLL0bUkUndUtsOuG
ikLKOmNZIW5rohShs+AsKslSHgVRpIJNHuBDLxMRMKqmAIZBxdJWo0H/J8eXL8d/j6ftY6/R
U5YzwaneHqUoImsGNorObLVDSFxkhOcuTPIsRFTPOBPI2K2LTYhUrOA9GqaQxylsCltiNhsx
i6ppIl2xbJ/uJ/uv3gS7fcamhN7WuM0F/Eut/V8KxrJS1XmRO0vUwhdFWuWKiNvgKjRUIX1o
2tMCmrfip2X1q1of/5qcdo/byRpYPp7Wp+NkvdnsX55Ou6dv/ZogmzU0qAnVffB86vAneVAA
bxiis0nQOZdFShSan4ZFQauJHGoIDH9bA85mAX7WbFUyEZq/NMR2cw9E5FzqPpq1DaAGoCpm
IbgShLKOvUYS7kw6lZubP+yJ8PmMkRg0LjCPtEB7nNRyxhN1c/l7v748V3Mw0gnzaa79vSPp
jMXg2wqteFrMcvN9e//ysD1Mvm7Xp5fD9qjBDesBbLdoU1FUpbM3wI7QaYB1Q2pG7yWWEC5q
F9PbpUTWEey+JY9V2CIJZbcdH7TksbQ8sgGK2PZADTCBjXLHxAAeswWnbAAGpYUNoRyumyGZ
SMYZisokMAQYkh4qC9xxDYoom9UZo/OygBWvBTjwQlh8mcUllSp0SwtxK0GcMQNLQImyl8DH
1AvLZQuWklt7elE6R2FobyXi4KpERYGWBv8OSYDWRQm2j9+xOimEFlQhMpJT1yl5ZBL+CG1s
8CgqhY1PWal0kIibz5kc4rULqnKS8mlegwcqllbMZa+FsSCOPoMT5uD6RGj0KVMZ7Pm6d2y2
cwaxNohA28Q4FseKaq+t/UJo85tNbgeLjt2IiARRVe5gHTapIHwOdMrKQvPdcg0CImni7EPN
UBJea7ZguRrByRnYgnC4wIsAK7yoK+E5FhIvOEyrEWNIKjBGRITgetP2ERdS32ahBrDe1nr1
sY3Q8VZi7QzomcWxvVd0PIMaaybuGL6SXl448Z22oU12U24PX/eHx/XTZjthf2+fwAcSsK4U
veD2cOxd20jn2jgYJLBaLzJUYhr0uW8csR1wkZnhTGxgAh0rTSAKMoy5o9gpCQeBMq2i0CZJ
i8hSMGgNayamrI1wLdysShJIS0oCWD1BAtbN2cyKZdoaYgLGE07baMGKgYqEQ5o1DcrGzaE6
mRPBpeXxMRSJcP3zmBMrnswyy9dLiJPn6H6W0raz2tLAzBq//m592Hxvkt5fNzrFPf6qE+Xd
5v311Zfdqb7ffjWILvRvPbXjD1rgbMn4dKaGCFBoHgmw4DC8Mdo2pyYoAVZLk1K2U5+aRDMF
HUjlzZVR2vKw32yPx/1hcvr32cRtTmDQye13yJZDlor8fnlxkVJnYcjvVy6xjbpG8hHkH6uR
QS4vrYnoNTSqg76i/jCPBlhIYGBzrVAWjo2HzDlkj8RnLTrprW4CMSpYHVAPFJ1lHO5qmLXd
L0CuPobnDKjrEXGYfkJTnt3dXPblCZ1SaZbcVHTFQimhhtewN5gdlp5bab3Uye7w+M/6sJ3E
h93fjqUiIoNwI+PgtpaQyPjJl0GXY+iEi2xJBEP7nRFrAyVLCPwa92nPy4bXNIuxlBKy7jT7
8PtqVecLQazMrwVLsA+Z49wYq6N8paD/QG/TopjC7miZtTadQVAIvnS4o1xVaNAYCxc5JDXn
UF0nToZpqBZlPPAoavvtsJ58bdflXq+LHa+PELTowYrqttHLcbJ/xtrbcfJTSfl/JiXNKCf/
mTAu4d+ppP+ZwF8/W3m6bTNnZRk5WUwB1hKiuKCnh5Z1SiS3pAKQJVm5gJjnhetheZ1GJGjZ
386/sXDkPVqEyfF5u9l93W0aKVnqTWdESi7rlMZgHa0YoIxpi3SBslWCfneNjeIU9NBF7E7b
De669/fbZ2gM7rqdjcWRIHKmtaUf1+zqEAxMneUCGCi4xa6OYwrjK62Wf1ZZCQsTMTsiVOBj
KXR6K7X9dGuGpg6nqzR+93PBVBhhoFiyTLxwva8XacSsKKx4t0tggUkeY/lyJiBT9qzz9VUE
VrFIktpnU7CprCHoblw3JG5MAqDkofFDoghhdYak+IJ5bGjaHKyjzslpVq7obBrqSjKKcdYZ
FBpt5Ya3DWas4pYVcdNDySiGSVYMU8RVCsLHKBK9IbI/YF0aFMiqwAQsxBsQzayIKS1ysKMg
VjCTsWO3myDSLAumEqGcEAKuvKhZAqxyjEWTxHe6yJRUsPyqraaK5crW0lEUFjrsEFe2VY8p
LRbvv6yP2/vJXyZmfj7sv+4eTOGrN8VA1nQcjinPdeMHnq/s9S7tVpB3QsJm7x2d30kM/G8u
rfTUrGcoMWpWWgmGRaFiXvnHA9AV5pySR24eGqHIAj0SmVsRV5Wb8wxQMp7Dr6ag1LrrrpCi
Zcn+u928nNZfHrb6cGiiU5OTZdwinieZcq0W/GgsW8+aIZNUcLfQ6VNkaHdDeOwxrrIyuJZj
bOo5ZNvH/eHfSbZ+Wn/bPgZNdBMaWmIAAKh2rB1+7QQ6TcHdrnm2ylymsDql0poLe0PefNL/
OXkZHWQ+GPoKhvG9l/60A/Kp8EaC/ylcWMy1euiCg/6pAvIPS/3QneeFAmtil8fm0ppse2SB
AR2MlkP2HoubDxeffnO2cpOEdEcOCeFpZTuwMXjOWIw5sLYXcyeMoykjOSV0xsKLHjzKuSuL
wjLvd1FlOZO766RInTrInRxm3U4ymJFVJwOdg2SRHa9rn6VXCZ3b3FQ6WsOagXZwIex0N4EI
FkJARp0kGOaP00e37J5JVKU+zwvq9bjq9rJVtqDxOGoqwD9aWjmPMHdiOZ4PdkY0357+2R/+
AmM33A2gpHO7W/Mbwjri1HjAkKyCq6aCBZ9VIiydw1+gv9PCA2FBxwPJKgJzl3J66yHMxmB+
pzMPwGTpQXjpum6UGwRKA8BwBJk5yTH81GIJimEVl7oazFRIHNysXB94l6ZkSYmvCz0BiRdY
b41rUYCXCVU2gUjj8AwcHIS1LwBT5qX/u45ntPTYQDDmNeFj2IZAEBEKY7QGltyTLS9BJ2GL
ZdXKR9SqynPmVGC7FsG6cQ7Gr5hz28OaBgvFXVAVW71b8KSoBoCeE6tfXCJHnTTAqFMvjwaG
oWtakHBJtSXiuaLBkoWZgquVGqj11Z+FxgwFp8G+OrZ7kpboNaadDvW9dajIOT5robQy8H57
t5glmK1lUYQOcDqamaJloNOZVK7e9ZjbKA0Z/Y5gwaZEBrrMF8H+sGCM+d25LtMQixB5FgHw
LSOz4EA8haiq4DJsEluqmIY1oBd3PA12H0Ui2HPruGCRzlxSGCxid03BY2dAoMX9CkUevj7R
DR6HDWSLF14HHroVwc27zcuX3eadLbIs/ii9Y9hy8VsoiCo9hYO9gnd4MCXLiJgHGWxpypk5
9gfnnZXhIA1Iu3TPB9l7zmQo+8MWPTDEqqftYewKVd9+4NN7FPwFajcPoRKS8fQWYrfyTMO6
OQcdxQ+unQxJ0uKsRDq6QlpJQp7gouY6pHKgeA4OhjCz490GDB3FbBHuo8ZVdPi0kXeQ54a8
sEM0PL5x0KgB4FvDmuITalV5bUBdiZDufBQehUAQH1PbcNqYqZta2ShJ1digLQl4RchS2IgQ
SUbymIyKIBntviOZXV9dj3TOBR3BRAI8J0Y+I3hY+IgXss7lCIHMs3IEVZaqHJ2QJMFqtEvD
x9urZCRMMiJvND88Qk7c6cLvXv4u2JccwiQvBzBIkblgdNhvRiRsZEFiFtrrEFWBcqxunWa6
KurvBgNsNmJwWjDpKpsyZ/OCC1DubwiVlm3E5A7RHWiOiFVfUcj1zciR8cFSuIOZa5QOCOXh
QrTofFZMjDXKSRH9KVgyitam8wy2UKFAxzDzJ/NFZgpyPodYzxvpxE24EGKyERfmGWWY80AV
VFhB9BqaY0jupqE2LqRvq063tDtc6crNcbLZP37ZPW3vJ497vLd0DLnClWoNfQiFqnEGLZny
xzytD9+2J+d41GmiiJhCVG3SqeT2rJ+zyM/z0VIFHW+Pn73eBdYm9D2P82TOQUiQoHCCqBCJ
HyWFSF2TFugkx4s3fhw2pEpeCyls2jMRikVWaIP9xk4x6TfnJWc7bc3tG3s9b4R7Ohj7tZH1
Mcsbh4XAN5ODzfa4Pm2+n9ljeOUY64Dqthxj1xCZe1hhbg2FuQ33GrcNbVpJ79AkRAXxIcRq
b+wSNmN0q1gwfnao2nOj80Of8T5h8jPbuCfyA+EAVVmdxXsRY4CALbzbhSEiOciTfBJG87dN
3qm8BfDovHznHKBiafmqRsxCd/UCdF2R5VxnvBQkn4647hD5IphbDCnTK3VeIinLp2p2nqQR
2DmOMhI+RAmSvm7WG0osTzbXkM71mCeYU76tTzf6COCX+ahvMxR+ZThEMlevWjEdjZ2l6H3C
GRpG0uwVCsry851gEveKiE0g9zYR44nD+bnrqwJSuQWiIJ0YXNAbpzZu5208YghzlsXq+urG
uqBxtoBiVbilHZaa33jac3P18Tenoo3wiGNoUvNgfdYjgf016LdBuvf0GhwaupqXY3C/dOFi
scdxniyi8QEQOzxvcDgIVQ9tmtCUNQL67bsP40cR53DjggQkT4h777zBp6DH+Ed4MgvpNVlI
c0N3jBxTGFxYeXPZXLHUtv50WD8dn/eHE14ZOO03+4fJw359P/myflg/bfBM7fjyjPg+ujLd
mRKMGhy5dKgqHj116WjAq75KQ8IPL2wSv1bUT+/YPhzx2RfCWRCALIeglA6I3BulBpgEr5Jr
VLFIhvRpNHLRtEeHSwbNMoeyZIOSs+Fo2Tn5yeCbFYPLP7eBthYlJOej0gRN7tTrD6tNdqZN
ZtrwPGYrVyfXz88Pu422gJPv24fnYds8oapn7n/eUIBOsAYviC6qf3Dye+OAhnBTPGjhgcoR
YsYKZg3JyMmiW3DwB46rcgjEmrFb/jawAaGptwzhus6WZyVe4uHDElxTWnSBbgEURA9wXnYV
DwfepFm+AnYYL9IO0ojSOMtXCZUKxciGwj+7MNAuzXWrUQ5yWBoyaKcU4LQIpcEOwbBI4LEz
zLoHE86nwSM/gxZk6Q8NajIseHaooYR9imZIO0g5t8f0JowZfdqezm1E66iM5rrYUU8FiaoU
H1gEb4y81udI+Z3HU/e+1itKhbnmSMDgRa/4uz8J1Ef3WNiieHQXOuAfI5czcvmmfvENbvid
C7Z4IweBkRu0sJ8kwg/vPSJCPP+OoLEoA2I292wdftcZKDipeehRjoWHUGHQkorbUoUPYzV+
9K4KUeEXX5iwhq/raZUZu8iqLyJI9xzJgIKdLVKS139cXF1+Dh4DUydMbLaCuQLTg1M77oAf
1mNIokjqxNf4EJKUZcoQEb67cxVSjZS4l+XLGejaiB1ijOGMPo54O7Sc/uPXnj8aWvs4l/hw
tMBvPTh7FRaP4KW90IFMUbJ8IZdcUauqsGiuJQ0h7SUvH5wWRRmZAlW/ahxSjqKjCQzuUQyP
dZuDYXfQrEy9yz0IqaeycKG5G7jNZMhAa0Hr6ZuTY2cF0mt0Rphohk+zPgvlSBp/1zILRX8a
pSprchqSzbg/aE79R/cNsnk0jDSl4OFdbNE0N7xG5ixWeA30tnafiUafU8/KY1LPSIYvrby3
svY1wclpezy196sbTzNAeQj7aqG1SiQDzz82OxIOd6JQPkfAj69Eae36FgLhsQ7n0sK+M9Fh
vQfbYjV3HiMk9ZxaNRxHPj044VEtKiekW0JUkjrXNFoI3r+0oEyfVNk3ZDVIlrceBNTAuu1A
kylaFMcL5qkG6RukWRGP3KJtGqKWs7TAm7hLInKeT0ObtqOmTKjurWZd5Pat4o5IsM8VzFI/
QMaLiWwaRwEyfLbQXvJHEv0uJUCnH/n1JHgk239axRoUfrA0hThI1DOeqzBn5hn8Cp8ocBGg
aKMH90MIFjrwhZCBkERM2pvR54S5dFTAAePjdafWkfKoXWgPYhw8tCpHcZRm40g15yGktyMg
6BkoWgurBcUr4rgrQtmETda+E4YFNF+r2D9uJ//sDtuH7fHYPqmaHLb/9wKwyXqC36CabPZP
p8P+YbJ++LY/7E7fH+0ouOs9Y8FT7w6fMjtK68DNigbnBV3K9o73WJXT7Qia5NU5LqQibe1s
pS+W95+dEsmc24bZ/G757kNHA+Z5WYW0q0FPS+65xk+l/7vxxQNwE706HupTORqvUsKd2gz+
Pks8uLOlgZW0jQQr8VTDiaxaGH4BR6nb0RFaMrQvY/FRngQ/tSQJhBX+QWvNk7ANTZfDuyBt
XCZh1+EThn5K4KW1gfLiGBCEe1lPvypwXzPg64liYbsapmYKSKyrfiZ73P692wTe9+oAHB9P
2lPD32PBekmti9PmRx/hUq5fpkAsEZIhYIksM78FwtrtH5RmR6QfGUvg4g1kaGaHxAPS8HdJ
EF+XI1kOPlDN3KjMxTQPyEmaRs3DcqctusB52FEgeqC9DhbPjNKCNs/S9TdgRhiRqor8oXUE
F/x+A2KJ7RkRwKj9uhohvFi4AAg6PAAxDwlcWYJGYLzL8BbX6OJpqtcUQRPhc8vzFNbCjqx/
Q8bEFf7j5AaFKtNKUw1CXIQ1Xge/lTR4UIwiSBT8630kQI8oKEQgLFQKwWb4Dbg+6XHWTaOa
l7Fj01nhBzFWgzENuKZlNjLsCvt113BxXUuWeQuL3wyE4C51afETHpASEZdW86tmVR4z/PaP
v+VdPGrZ2KQE5ILuJ+AccK1Dm8bAHXffnpb45B3XSJ/5Sf9cRTeOl15v8bJm7gg64FSFL5cW
asidGaXkFuRDScm8BXZXgwhVMvrbqBLg1xqnglx++uDx2IKHQzN8WlXip+wGI7dVvjOiMW8e
919AjXcPiN76ouufl41TmbBrfb/F79BodL9HjsPjLc01JTHLqa9NDVRryAiK+drQIsrUvfE4
QOpexwTvEPr68OfvV5csABry2cCbZWpPoF8VTfcxgbB96WwPe7p/3u+eXGHiN2z0p8I8891A
m890JQNPxMAfjL4mdEbrxj/+szttvr9qAuWyqaMoRm1BnO+i7wEMpf0xBv2RB/93jdeBa2p/
oAGbmfesDcPvN+vD/f9zdi1NbtvKen9/xaxunbNwRaQeIy28oPiQ4OHLBCVR3rAmsU8ydR3H
5Ufd5N/fbgAk0UBTmroLJ6OvmwAIgECj0fjw8Ou3l4+/29Fr17S04zfUz74K7frRGIy3Fbd2
0FL7DJlGYChV85yLt5U8ij0xsupk8xjuOLf4NlzsQvtt8bXQU61ZGqx1QFSLxDbTDdAnyINj
TiC8XS5csTEemq5vOxWCIJkkHL/H+OipGPe3ppWHkcbHIuKivQZ5gZn1sTbxNffj89eXj6J6
kLpTeJ1peLKVYv3YsXnWsu840jP70c127lGY/cIbDzedUlnanXimzBPdx8tvxtB+qNzTstEJ
J+SoudJz1ydNXTAGr3EwmFbtkXDHntuipl/1gPUFhsXzGxstHhrIK/YoAyygVI4jcY/iBR4a
aySVwfgFe8s4u6iPkbi8BkgtWxIkq7QWKcpxMxLuTO80PYVHe736YMWjpW1XxKSJEXx4Hood
5Nw3Gh1qUakWYCORgOXyQ2LBGdkciuv/pBHOUtPg6blhTxtpMY7P5lkw/ovK5iAZScHqk+Gu
tE9yVzHtY016INQE+ncvwtjDpE2XMmKFDxYFGX5Mis17H1uyufTRubC5BYoIN9Aa3V8yp7pA
mKkp2otnpgwc/uc3kh99VMtgEsCPFFYwSaJ91VZNn3O26L4Nemc3R0Ed75svqq5lo4reQ2fs
072wRvfiKBwKBg14bjYD4+w6sdcSZqTh5cbZsCpLl1egwbXjcHJt6EaldH6B+d+IKHfAAsln
OYEUTcZLTvvOExTtOKDUz99+vKgglK/P376TgR+0oGke0ZVOT9mhYB8Xm2XXaSHnVAMdwx42
JmCJqoxDtdO+FwWMVy0lL7DEbcPTGKAKdt1a5jeLBX1bcYkxBRhEOmAByTEUR8vbNwHNhiSh
CE8VieLM9qD/BPIpVWV+5c0+r0lUS53gT1gBqJM2imKyxai2zzqCKH/+x2u7qqq9ZsPsBe4P
wPett9K89XUTFb80VfFL9vn5O9iIf7x89W0C1bqZoJX3Lk3S2CESRxy+FZdf3DyPe6CKflYT
XZCSoris5CXi1mmDwh6mx2ub9qjGJZBb8hvJHNKqSNvm6iaBQ+Q+Kp96RY3cBzNJOGrhnWT4
HWZGcfu6/ILNnQyXnHk1vLsI/GYho+OArbgKFtvZl6nYs6fjgzDe52SPZewTRSLbhMsM7CbO
KTqIT63Inc85Ktx0oGfPJBHtpY70nqzM+S9BL9qfv37FXdNha+Q/f33TWs+/Idmj87lU6L7u
sG3wSLo78h2vsvD7sIHNWcLZqh7UKo4K21bAnQfNFkRyl/E6XMSJl32Ztko0m3Er12uWQVNl
GjsDhLuInLA+grXVFSxmp1pUL+nPDYwETpHRRzA07+AdudMcelPr0+f/vMGF77M6uQhJmUnb
GuRo3Rbxej335SNFbpYTijYC95dGtKkm0b3O6VR2UKL6fONjHS6fwvXGaaY6jTCeQbjtJGUb
rvljr0qcN6x/T/cM5iOBf84T2sH38v1/3lRf3sRYqXPbGerdqvhgxVTu9ZEpsKKLt8HKR9u3
q6kV7zeQDnSAJRTNFJHe5TFTA1GZomx+ao4u/U0FtJJdBc22FsdQ7N+hoL6HbSxSat+PY6Po
ojlGYL+XnqXDqCB30Uwb2tp7w1I7EK0xJRzjPrAK1XvkNQwJD/+t/x8io+fDn5rJip35lRp9
p/eizKpxlh+zuJ/wf7n1XDVe79aw2jNcKQIQsMzmjLtBWV5q9MFEDuXejApyZJ4VP1zO72q4
zz2lrP9YrafgMwXrymWeqvGyEwmTWMaHxavUO7Uky7idLSzBae+MqAD0l1wRdMoj0qjZJHCD
wj7dm0No4cKV4T0szLyDokN+gnXSTEmOV1j2k0XTcV/EMHdv1pbfPGmtrl9l9t/oMm9b58wu
wMiVmLR7rnmrTNH8Ic8iSQkGxfzKi56q/Tsng+RaRgW7h4O5QzclEUGAkbV0ldHzMRXGosOi
5Iz2tE1IqAW4t+3kj3vFecQdTFd7lgWSjg/7vGiuOzziM0Bvx1VNWJ+JjFL7TiI983IeKKND
eIcHMOq228fdhkszCLfcvUuDuKxMKfX4fS5SbouD4NrKwnvMJq/B8LmkpYRRAA8QLfPzIrQj
wpJ1uO76pKZUzxaMHheuASwN7X+ZPB+norhiV+A3lo5R2Vb8XnUrskJNS3zYaSx3y1CuFgEr
RpbLHKZ3rrRpGeeVPGEsF/Q/6nk61r3ILbeQ8nrElSgxyMGqqTqRu+0ijAiLmszD3WKxtF9f
YyFn6Q0N0YIKGIOW98sI9sfg8ZHBVea7BfEoH4t4s1zz14UlMthsuZVMjUdGjycrQgWHAoH7
VHG9NFsvVv6OwUP2afy9GKNlNnFlkrGs70iD2sPKnu7+nuuoZIeaOKytG+dgLsFliWdCaBw6
QWiNqRO4tvMysL7zin0Do1FE3Wb7yEVLG4XdMu42Xn67ZdetNkyOsMLst7tjnUr22hOtlKbB
YrEihgl957Fi9o/Bwgm21JjjjLNAmHHlqRi9CIa8/e/n7w/iy/cf337+qS7l+P7H8zewJ6ej
gJ/RKPoIg8vLV/zTtvtbXGuyvpn/R7rciEXdu0RCnMF6Zx8XvrX12abx0fq2VdeL8hjv+CEr
rqFLUvgY7aMSFlyCLJ3sMXbShElIqFM/eumEgdDGFvf6KgqRCtlOlXtg0M9OkjDk6t868u6Q
voW5xNpJ0LK8OhycSD99Ni5N04dguVs9/Ct7+fbpAv/+7RcwE02K8b1Wlgbpq6NdQSPsHMCd
8EryjrubBRmS1/F1dLguhBd17s4Yk43gFEsjMPkuuEXqIF2sLTePAcmpKoPF9vbEgFXFbvH3
33O4qJjiNAJGBn5KGx8OF/yMomMU1X4LDfRFvG0500mJjvZFBwoZYyiH5euPby+//sSbU83G
YWTRhBMHwBC38cpHxi+zPWLQtO3VStwgzjNMNvCtLuOKRHYpN8gyXj+uOHS7s2viDJMHe8tU
e62PFQ1esrKMkqhu01mmiVHtkLJ9z1bJoxg9G/YhFZmLuHJIDyf9NrW/9ihOS3sbXf/uq0Jx
1x/gY7ea0gyCrfSCP4fUi+hDNUNxMunYFmKRbAOMXrepO2rsl8vQq/2ywPtpSR8vkr477Gf5
RnRA121pf+atHLvI709gVrImuq3VxM7316dzdCIoGCO37maPfbmaIYQYlU5NZYee6d99ud9u
afSd9YwmD5wxl6keRgTdUzNRQ7NqcZR3aRJBtd9gWZkSO4sT5yuzdY5pLu2v2gB9SyLwJ7QP
2FjoQb5kUlpx2DnzUXM3gD5IyH57MdgBlsR8eOzLK0p7rr/FHcYIknkngcF/5mKlpJzjOhly
SlKvDO0pv98nE5edkVNKi1Oe8luEttaH13wEWdTAqDlDIzcqNWmKtMVkfMpmBtpM5n3Gx+ig
qH7vTBkIqq7r4AcRlVA6qggDSzsqsu9zeidaebr32vpapHta6M/CQZ8/BGYrnqJLypsDlpZy
9jPV8q6YG/iLqDmn7K2PthJoRGVlMZkXebfqbcZLBdBFh4LcAIBBTYUsEXzte54RzOoDf4J2
fATKMacgL/N+AxDTi7TY6hFxM8eGSbWq13wLShGjku8qXhvOb5ilUU7Do61nyqh9TdLwZ9qI
+z0O/myqsiru9uHyfpZnkQi+FfM6Vp/cvSSqJ64+wPqwbwOx9M0FDmkJ6x3KcHAEWwfais3w
mmJcVCbuWEI1rDbxxqGZhngPyyzWZ2HrnHC9aYcNvY/VHYV2mgbCpS4bh6Olp8j2ZuroHE1d
NMUKFq+o4ia5O7fjwY02vTt9NNCicoZC3VbDM9JzJ5iNjowKebKvH5FoNhqzk0tUpil3pN7W
qPKoyfKIXEac0a2GLEYfPb/LgLI4waU6/w2hgoQvjDtePT5sVuKkBBgDGJPbdUbMxBuxLyzy
mTPEROlua8iC9ZGSiosx7KWjF1KWGP82Qz8BMtwAv79gkq0aGu+qne6/6bWsanm9Y3S36fFk
Bz67v21VW030CZi3Jfo7CTuYJXBNBxDFNUxEyKgvZ+YSo8MtR83T9oH+QeSsqawyn2dGW0vl
Ij68YkzQPtvbddmJhluIIxzW1mI2SxKrKpM06zrnpxOJKZ8y+7I5UZOATlgBNXg+seGwPkfi
nL6hYSLQBPrQ5ZDBBRDL550mfduIwwHjfW1BJro0MZDeUBHiAX76cQ/DGq4Y1CdzI5XwGR+6
HAXszokoaa7D4tVNyewf7WcSGtaGNLF9XKxXwWrhoToEkeYA8GOnYS6DuNiuttuAeWr7eOup
Pr4eSoz+dIqg+R+ctokFrEojqmtWV27G+OWZF57ZIapznS1vgnTtTJl17Ex3ia60HLBshBko
WARBTAXGmvba3sDB4jCTk7YzncQGq3IObgNGgiYghUvFZhB5pcKt8vZdFASzbRa128Wyo6m9
9zMwVoELKhvAAYcjbwTFmcdB2jRYdJTsJ20iZEGMvYYcekG9XW7DkCaEYBtvg8CHoQ8z4OaR
A3cUPIs2lTKloNneOsDYEDYH7Y+mrfskt7vd2qZOKvQhFfRlOyAJDKgyZ+U6PNcQFziCMEOu
aHATop43zRbqaAvvmb1o9xF/O58Sx3ipWGOb3yN+KgWZHZVA+4UcUMVzZK65qkTQKZB3QbBh
V0qh6ojlq8Aqpm5SBYr6/WoR7LwsAN8uNmTHXQ/vyNZS/Pz84+Xr509/0+Ad0zi9vtjLqTKN
T3UzW3lGkdIYEJGmHs7Tzp7gqAZMlk16eDueE5Oz8xHI+g7+85acYvP0R/WcHFat6WnNuu73
Mpm51BWlMJfnmoCXPDTLKIfCoq69B1QVzFwmAvLKeYANlsV0IrAJYzdxxGa2QiR5fZkfY/uX
qMfTOPSrUSIJY/3MkSUUI2GN+mvjdbrjX99/vPn+8vHTw0nuhz0vpfXp08dPH1UsJkoGEqLo
4/NXJLvztukujl2Iv6f9i8JZv41D/dHjqiIP0gUXqs+f8UcpctGYQCF9zgkBRVzD5762OCLU
T9d1pEGyEashdbgoPkbOVXYg3D31x4uLuG9po0yeIEsyyfGoaOG+jau0u8GHo9TcJN3XACg6
7r2M5zJVZyihuCON9Uylgmrb7XbcCxmqI9qFjRiajb9VV4ldIhdTgboB1D2tJCh9eOGKnqAf
60Fdp6xDGWb6kmrGhp2KSOPhFdJtE9GibZ6830wrI4oUTFURCfsLEPkmDBYe0AupfP3kMzOi
WxxKkFOw4Gr2EpfLjb0eMoDVBawkgif3t9d7EHM7GWLDq5MiBU9cqdlRoEhJdZKfmn7DgXRs
ukHZMYnbzGLUnE2YSCDhjM08Zukqw93OT9QXaBtuqxwlIXW7GQgdPMIhHXU03leE31aDTu+C
VQ1I3N+ulrjouCNSjku+2m24OCOQLHer9TD1v/zvZ/z58Av+pR5JPv368/ffMZR/Orxrp6vy
micCJwoZMRtekxfJ6sIH47rN1UhBWgw5CSLeoX5MmyKd4Z5Zr8xowIsbIYs1F2JpF8cs10iT
wWgZkYF4wPqYL8ko5523o9j7IEeJy/jla7Qwn+L5Y87MxGpP7R0bDSiaCBvNt09zH6YiXZ1z
9xJFbv+D0YOxWbM5TY7pNuzYz5I8pteX1jKyzbfBdkEARZsgHZ1daC+sDCR9KHGgx3AZ+dA+
pUXHQmxTbl1lkk2dNLZh4CSLjeIBdOAeQJfLwLyfZ8+YwnK4tlWETfbRtJft1vnp7ONpzCkT
QvA+5Ni1BiHvhNEM6IbEmMCer78xfa8gKgMfxRw81KuzEaRWFeltLCuWrUEj7uNLEN7twrYT
+ZIHoR1Lpn+74dKIsowQINgSSyF3iDXVbz+5qTAfrsnM5oytpbyPaVnynmQzsTfRlbU9jRim
qfXCPh058AQeL1IQcxDjzPq5qSKyujGUUI1LE3JM6GUL+Bsj85iUBhENW1KoY14oLGscQC+F
baRTMcSTAQRdAVaWVmtEZUfsoeVi0VZ2cELUuMtTDAPrExlu1iEXrH0uOgyzmpKAVeGKnqnQ
EZK6iifIJtqbZmiZkLlSx4N++frzx2ygquJmtEwX/OnwT2osy/BEByWI1RKpDqI/ESoHLSmi
thGdkYyntj8/g/Xx8gXWu/95dqgPzGMVLDIdSmNH5V115TmPtTg9k92VAdQDiFUr3qk9J5un
9LqvYC66URJV2NslxUUdP/FqFcXcP8PDrRWqU3yUcZPOREeYkgh2068pxMoLx1Agf+xDiZwR
R2MFx9OnRNnC6sIDongWKgcPExPf7erbfLEGCV1kufAKlS05C9CIIjeB9WhmH5+/fVQ8K+KX
6gE/CXKYhpRb/cT/0qNGGoa+/7RPXPQg41paxT/WvUys6fUo8r6wGd9NYrEgj2kUTESNToOK
wp1h0ZGaMFF4kvOK6exkiG45Nz+MmWSKEdV7Bq0w6COq7ZvyTH2h85pLRx26JvjJqfBDVKS0
rgekL+V6vWXwfMWAaXGCFXrASLJiuwjslRDXHcY4dm4A1WPFH8/fnn9Dx513IKtt7T0GamRU
0P9zRRpTylw5f1j2+XbQtPrNxcdAb4L7vSgTEotwKkW3A5OvvdIlj14UIsytaBRfF3J5mhuO
zWHxby/Pn32PtOZT0QcPYxpubUTbcL3wJqbyry9vlOC7Tlf5SP2TFDoFxxdho1aVuPlqeT0T
DEOUoMEizuVnlOK8lo9B0HlFGAR+wxgFP+qF4CrkR/ar23J1JJyXm3zni15E3VKTf3K4/0ai
6JiqBJTLilMbOsJ8kfCd6DXujmC2NkeFsjE1E3hlKE58uCv0g/u1JfEGQ+G3hoKnXEO/PbTG
KzOwvxYqP0oMpFuGHdcKk/B+RnQpYYGzlftOFh6mYtAOaelXySi58QFKWAXMBRRpjRzjIvhz
pEMacVx27PHyQR5shHxUVcK88Sjmijc+yttCnppjFxl5K4p92iTRrdYw8/G7NjqYID9vHKIa
9xvYPEBjBn0ZfuiaU3F1Q2kfnRK8I/RtEKxh4TNXurmSeeNA1m26DX9CVingMdWZihhEr8mn
6CTMU7P7dFrJbOfXsnc1ncTALCE5+2PmoOFXOD14MqGvaEdQgoFFt5E/nDU1fzbGiDHQPa9v
v5jSEWWWpx1beEc++/oxhgwqJkJxEDEYB80rVOZnxraPJFdrWvCq5k/L/kOwZC/CGtIqlp7x
POCvyuKc7k93Ok51yZksAL3f+DBseBWDl3LM9kCR71OwzPqTdBcprrTnv3qqMz924zTrf1kj
Lw2xBd0s4rYZL3Zw09W8sWXirKuNUgmLJ+JNKqsPVcG5kspTnhs7e4osQiJGc7kWF4GpxJJc
YnA8xxMVJi0psmfq4B33HRSvJr4jXs3M7xWDBPcoytbKa8LAAD+DQTuykyiUXAhW+12grolb
w9xP5amJuhD9EWo4p3ciYqwXckkj15KL48l8zcPISvTdyY5IBzvpHR9zoa0tts+fakCKzIEu
eLVjUrkpqwsTqszVfoplvy/sg5KaXAZxpUCEZa1CH2ekdoKKAFght+T6gPC02arz3rdj4uzm
YrG/UU+wcGvw8EHBQIouGdbFhEdlku6j1TLgBO5NKZNkGAo9gYpntd/NErXcFvckT7traW+c
ThKsfg73mewnWQzfFKV/mmSdqI9ggfB78XWNJ698ji7D6vIbs1CfPulrGat73GZ2/3AzCm+o
Wy3YrYFJvCLuKRk34Ypz+ovaumrLCuGaKenwGPQi0hXg91NB4zAAcgejaWSM4V/Nx2WAfZRf
nTtSJqp4v0STC8701OYEUzYSemqKY98HDda173q2N5zgR69crcicRXzaelusZhfnSniEp4i3
F0Ad0acDAKfYP1UORdfGFQbssL32TkGSeZ6W9E5Rk6zS4L2wo8LcAnTQyNt4tVxsZl4INeo4
2q1XAZe/Fv1962FR4tzk1UivIwxJiklqPXGz0EXexXWesH3kZh3bpTAE2ehZosWTBYmSVc2R
H6q9aH0QamBoXMxs9N0h5fDUsOb7f4CUAf/jr+8/bl4SoBMXwXq5dnMEcLNkwM4Fi+TRJik0
GJ6tp+BRdOtjElJQbBeOmpA2oQAitRDdikLwuTRx6qSlD+lBTzy57S2FXK93bByKlm6WC6dl
hNxtOjedM3sQ30jqprIb6Ps/3398+vPh15/TtWn/+hPa4/M/D5/+/PXTR4yI/MVovfnryxtk
qfy32zLmThdSCD0Fz5Qjanfe94NYL3N1xVQHHRFm2LKN2HulUbvr7L1JNUT5kdID/FSVrnIT
F7LdUzDGkF8aK6y+Q33iyP888WZCRXyPphveIDT7kdq6MWcwKyVr4UaeTrNiya8zlfQQLuYG
YG0COF+N/4ZqZNU3FuoLLu3Fo/4qDsc8Kglpv/oMioMLwBBae9OHqOqlvZmO2LsPq8et06Hz
Og6fKFS0m7X7aNE+bkJ/BD5vVh27l6+knTOGGRuUgv/H2Jc0R24r6/4VxVm8sOPFeeY8LM6C
RbKqaHESyRqkTYWsltsKq6UOSX2PfX/9ywQ4YEhQXtityi+JMQEkgERmg+dUCmMjX58i5aTM
4DDtzUKgIBUImvJ5Wyu5tudEI/CxoNaRu0czihBxIojkrpA9KbC5w00dz6bdIjB8f6lgjqdj
nbO5pxpyPdWiozz7MkhZLpjKu/UoYqglOxxc2qwQwUMdwL7EOSm1BuXx5gA6vTaemP/+y6at
aLs3ZJnCJBmynKMobeUsibhXSD5Vg1oG/cWfDJemrM9lG6tSi7HCplk9/wv0wRfY/wPwC19g
70cTdsJvMBM27vbQkN+QND3sPqsp/ebjD65JjIkLS4ea8JpaYtQOpB6khsC4RmimzBoLGqyj
70594kZXbAa3VQsDqjPKQsDo06mDUBGt7GIAi6poC6RcJN9dslu1VrM7QxJ3e6/Q8rkn0OKx
un/Hnk0X7Ulzc8w8vWprNKN2sUtugxg47MNYzjvpKnwr6IayHS/nrgxvbjkaY6Bewznd9Dma
QmVauyTngv3LXQzIGKztTiQqhQIxOZw1euAqVw0L+bLvaQvSkedyo5VsfLmlEA8DHiWUtzJZ
C2AmEIV6SyWbri8NhVp0CkWQTpdMfPw20pTwmyMVHzcZuw3wzUD5amP90cZEa/ITb6UlNY6x
woaUJ+fDl6OkM0xuh/EkXOsLWadBCqgm8O+2UKlakX81zASIlVVoXcqyVb8p2yjy7Es3mD0k
Yz3NdURUl3X+eBn9KmsembkaZMyNa0SGzDAWi+SWnjUlqD+XbXEgqC0hjPwuUHXwKrE0GEas
ph//Mhz0KMdbqcRQsFFmqAV+frEt61oucdNJ3hmR1BapeJg2ky79jVYv0LRo+08E9YiSjKr1
281BYaFuZoEMOheqqAoxtSPY21lKiUVP/fw3TFF6v+i3uCLYipHxJgq+gdeSGUxbjBld65t+
QMnwtFTR0Mj0CWptSuEEhU0U37PogI8JCgtwaWv5MbpjweSB4QrMcjaxGR49Mp6mTctiu8Ub
Ty2b85mKxYfQpBiqn5zRTNxYoBVlkMElragybEAnOfCP0YETct1By671H+JVe9npixz3Rrjo
G8Jpkm4PhJ21nO4hf/v2+vH68Po8KiqKWgL/8eNBuXnLPHDO9M6EfVXSgZrHoGMCb4UhlmE+
w8eRSbchU9zT0ZlFjxrwQ38/Ug8tAvqxNtAenp+4x10tmCmkBGKFUfOu2R2CnMkIMRMvMS8B
I5R1ik09CZ2L9hWDnt1/vL7p53FDCwV/ffhTAJakoba2j28WMMqUlnL+cv/b8+MVdy5xhUbE
dT6cmo45K2C3Jf2QVBhN5urjFT57vIJdBOxLvrDoUbBZYRm//z+hpaQM51E4nchrZZ2/Uw9Y
p7h3I4AB1A9S5xZ1JaqKAj8erW4P8Nnor1nIAv6is+CAcOyPWwbiDFcu7iXp3dBx5DwY/dw6
VkzQQaOGLvYIRHQfOhE3lR1FcozpEcmSyLcu7aGlzuomprJN5ccQE1ClreP2ViRfGGioNKuo
qI70ICfS3epEP9u+RZQClqctVbjkHIJWRFYbcshph+cTR5PmZTMQqc5+QXpZ6Zw/FA+H5iL6
FlmOPjR4ppwZ4k8YxrvOHR2rS+Xy/xFXsMrFNlg2qTRJLOLGbG53FlRQtT6Y0NFxjXJHozCp
Q5HT2gvdG3XvqD4kxI/Ws9rkXVnU1Lc4XqnzKPnLy2bnpQOZNz98XElBOhMUiI5PiDrSQ2oI
iFaDc9m5Ow6yWgjRsTHmDpx8fOjAmCoFhDQQWHZElQPKHTkOdQsncgSBRVY5ikkgq+LAJmQS
vziHZHuwxOzPyhH7rvHjcH0sMZ54rcE5R2CoaEw2303ae9Zaomx/wvQj1I3oJJCj33COlaT6
NJTeiAp0h15y+qwKSPNDgSHyiI7qs7NPkavI9umcKtW6XVvYkh7NdotJZ+1APXq/f7/6/vTy
8PH2TJ1sTt8S3hfV7PeXdkusi5xumLAARJ3DgOJ3eZUfCVUBoS5KwjCOfaoxFnxNMoRUiE6d
0ZCYAZZP176M/XXUXi17SEWa1FMhx+MCUwclOlfwSTMG6wuzwPjP8nPWs4vWBHlhC9ea11sB
3YSYo7u7hOwQoNPHBXqW4T9sJm9dN1n4yMg6Gpe71gxETRcwXW3B3F5D6dZa8M2aKHR3tSHx
fh86lqFGiNGr+YxSpxUKU0jryTP6eW8jG/niT2Xyw7Wcos/FgLGtr6sjm5t8Lnyseu4/aSGD
1PT7sytuTk1riDbTq6+PJkA13JPpeA2zhlE6GLvsPZNa8Hgmub4JwVPDPo2j9WVbtmGUyFvP
icncObgqoeOdsBzTSQHlBGiuPUwKn2VTtTYTTwUbikvRZHmZ3OoYdeSnYpcyWxsZMxvsjoje
m+G+zEh9T/yesh/S+c49udoI5Q2oF8UEn01MWQLsEJOpWAx30ryqxy9P98Pjn4TqNX6eY9iz
SrTZnlVhA/FC6UlIrxrpOZIItUlX9FTbVIMTGoLfLSxhsDqVMAZCdaqGyHZJdQMRJ1xN0glt
sjOrIQiD9dkUWcK1sYcMMTlfs6qsrwpY9mC97JEdEssa0iN6TzWgN5b1JH2b2i0NgTtWZDKM
NAmcfo6U5R2xGYdNVlhShxwMiEwApR1zgOzFoWqPYUgav8xz/82hKItNJ/n9xP2D5Ol3JLBA
qi26DuSRVn3bmTiarbLrmD4puhv5Gowfa+rMl/62F72ocZNdyQR4Jl2OtkIdz1EVapfvJAMs
RsSzPddaDIl5qN5v99+/P365YoffxM6NfRl6owNsokF50PHJVkIiTs5bdaJ6Dsgh2XqCVwT4
N3nX3eLtuex1l+GTpaKpYIifd71q5Mix2Z5RTpMIOSTB2tNpRs5OSaunleNjk9bgcYNz0Fdc
3LxwwH8sg8WZ2P/r5pScszOaejMcTQhW0PJEnXYzrGhUUWNRJo5qg2tH4hNVfR3MxXUTBX1I
K1mcIa/v6Hmew20Kmam5zWaQEvGsFlWyfOQuHvBCbOpOrbDt2SiCo6GZRMrUsQJ6beJnDkxP
zeagpb7y7HjEG+pYlGM13nBxU3mJLt1zc9LQMo/i+vyUyu9pGJndCJvLxO+bI+ockOO9F4mv
+BlR0AtF8vEciYdYjMbjrPUblcyuhVViqc8cdyuShT7yt6lyGT4vgcZpc7YQZ9THv77fv3yR
tDGeeNb6vujYTKSO8aiV4mQ19V6cj+oTDH21I/lMrzYuozrEQON0Nf6xJN74SMPVPx3pn34a
qmVp023kh3qCQ1ukTmRTK/ckNfF4KyTYEirtzZe3bfYP+sFRCwaa7J1k+c6Xiiy0fEftM6Da
kRNplciS2DKEOV5was/B0F+T+u4yDOV/1GnSjT1Xy6tso9A3aKxj72amZ2Zz7+ONn3EaZbh8
VjzOa/7gR5TmzmeN0olSXTQX3wJE3/eQj+GQYuGIV6TjpjpHgZrjqfQsV+3nUxW52hqORF+S
LkKKxoc4xSfSNT+UURSWISKvsHhbl7CW7olRtjePLthlo+d1W602OtPkkOPpfZfBmmufyQmO
qNpsmqJVWdMT7YC+VJ1kybVjNV995qJ3jJwhdd0oWlGI2qJvesoQnK8EsCZ5lnT0RNSLVez4
9Pbx4/5Z1YylTt7tYGFNpKcfvJRNen1oxVzI1KZvTqLLRfvCV1tWCPvf/30ajb0Xa6C5wsDL
7Z2ZazpSB1hYst7xIkfKaPpYVH/ED+xTRQGy7r7Q+50Udpoou1in/vn+f0QXU6fpKRNGJpXz
5fReeR46A1gzi5pPZY6ISJMD6MY12yTptYHDds350tOVxEMeb4gckeUbM3BJ/50Sh20otmsu
tuuCTkhdUcpchiaTLEpEQHqcJAOGQka55ZlKGeV2SE5RsgQJ+398Zw+d2ZMRSjmK3vBFS3OR
qj4okLD9SfJZ22IEIMSlyXXcjSVZetkkaNVORtRJzlHs+PrnfFG6oCQeSIfFHCe/Q4skpBOf
sSgE00cjbSzdJYraKgosSRPDJ8gYaAo1JIu8iJu+TtIhij1feiUxYenJsWxaMZlYUDDI43GR
QRQpiW5TuTKEOuyaGMp8B5vuo6snOto3Uan2G+rOemonQJfUqqRONOKUzubGCc/yXleBDJ6b
VK59dkO0CtM7F/rcj2gQd9b5VTr/rYsX0mFrsj3k5WWXHHbU0ciUJsi2HVoe0Wcj4lCVZ5hD
PtuYWEY1DvXZVK+iIMbKd91ZdGg88bMhKN4OTsCiLWrDAVVtJyQFemJRT1i0XJls6LmWgxtQ
xczygb0sZQ3kBeJrbKEmk35O1TGOCKB1pBP1ic7tV6rNRodA7jxbtKKSgJjIHQFHvBcSgVA8
AhYA35SHHxny8OOIAKASrkfkzbcYsUXJIJNs9GXgxN7anLdrymxbiE8NZlEbfEtec6d8uwFm
SUpDmQucOqG4ji9jjUFnolUOaW9bFjHctc3qAsRx7AuXZcqSxn5ejoV0vMWJ4/s/xY8+93t5
/wHaLHV2zD3j9rCOQN3obYHA4tnUdZ/EINRpoVe2JR7oyYCkV8kQrbjJPPQNqcTj0psVkccO
qUNKgSN2xAlzAYbwbBsA1wR4tkXXGaHPygo8Ae1gV+AIzRmEtOeykQPtP4lC96l8JDsD5+Ky
TWoWtqdrSjJTk8eEmWE4tzb15QYjFB5pH2icI4X/JUV3Sbn7By2FCW/lgOsKV9YHDlFp2FuR
deZL+EVa4yTM1+mFf31Jqg1VRvRlfl7rky0aIvpbPVEEIme7oxDfDf2eym5neuk24lVqu2Hk
YvXWyjTAbvIwJIPoVGDOovTtSPbrOQOORQKgYiZkacPA5IlwZGB3MAnt+JWz7It9YLtEBxeb
KsmJ0gC9FWOfzHS8Y5Gn4xkaopAq/68padY1waDGdbZDCV9Z1Hmyy6k0+fJHa+0yT6hqqkY+
wxMqkSumSskAx1BK0EbIp5sCh2MTg4UBjjFVx1sbLYwjoMsKADGeUW+T/OWIgBPS9MAKiJIz
RLQil4CAWBsRiOk8XDukG4Fj5KGDwBKQkxcD3NiQbBCsiivj8MmlhUHx2hrKS01JUZW2Lqkf
DGngewR/Xm8dG53kGUZj1YW+ZFe4LIDpmRjYZRUQzPhImpTBKqQOiwSYkukqJHoZqIRMlFVE
yW8lm44I9NXxUEVkxuRwrmKHpJKtE/uO69ElAojUz2UOopnaNApdavQi4FGDsR5SfhpZ9IPs
YmjmSAcYemtdhhxhSOqhAIWRtb4GIU9MvkuYOWafPPrHfeKSNzsTQ5Oml1Z5iSZgVJrs5i42
2HRVitc99dtTheupnpdo5mEYd/p90oxshr4gyPvBJpsdAPrZ/4K7f5HppcQ8MnogI9S1KoeJ
lJCqHNQgj5pBAHBsAxDgaRqRe9WnXlitINSo49jGpRaHPt37AXM+Psbo0tsPOUi7C4nDDciP
h6EP/fV9SF9VARlbUJhqbSfKIvkh1IL2YeRQjx4kjpDackBDRw65YSjqxLHIJ+wCA7UAAN11
6DSHNFzfFg/7KiUf48wMVWtb5ELOkLWJiTEQKwTQPUrUkE4upFXr24TQHoskiIKEAAbboVSi
4xA5LkE/RW4YujuqkghF9toGEDlim5g1GOCYAHI1ZMiaXAJDGUb+QOxbOBTUxIYKIBhO+60h
S8DyPeUgbOZRrrJFuk9tTTAC6aWyrYuo5sxZswWPdCKoezeeKFpAphmom1Ny2xyojfbMw307
M4erl7zG6FEZkUXT5jV7Fg+p/cfS4MmKkh1Ane4/Hv748vr1qn17/Hj69vj64+Nq9/o/j28v
r8oN6vR52+Vj2pddI0XikhPUQmxNjdtsB6KBxrM4Ahl3+gbANwCBawKopLhRwzoZ3fXvQSaK
IU3EwKKLIqwngJZ3VhATyJDUu+ZMSQq/uqIB3xKBuXPGOAcTRM6Ud0XR4XUhxTSyMLxvySwm
rWLt+9mF1/lMppH0oNoG1moSQ2x3wGXRFUW4T6qYrutUVGYi6BFNOPnEopLeDqdssOzV0o1u
DSnJOhFE7sWKAJi3IaoQbX32LCtaK8PoMJRI9dq9dAMFdLU/BDY1tvpDfaa+mFyoU2Wc7pdW
pa2Hxc7F+7duSNdqw40bqfHRhw7ZdrjHpVt1MtCinMtXZxj22SBRwkPZykSY2g5Uws0Zg2Nw
1qWKRbftm9Xa9QMa7VK1Y04idTq7WJKKxL127c6bDdkZHF4pwhT/l/x6CdWx2pmjOfI6UzKU
SR+u84yvmrGG1PQzot1dojT1aAu/2tJodmwTTTq/B6IaoBsy2/5kNsHnaXqyLXu7TyZ6xCik
tTAS6fYqiyq0LdvQGH3qoyRLIhu4lpX3G1UQRxs1Q0KbtPLYUBaTGl1oaET2REBNX6Qbw40D
U2i5kTrIdhh7S0mvarFulqG8zNFuYGkfgU6TOKbWOlSl2BWT5eG/f7t/f/yy6CTp/dsX+bl9
WrTpajdBfrRT5R46om36vthIwVpEO2tk6dGTqEyC9DAwuvj1MqksuClPFi9ATYBkkOnsk75J
1ex4DBTTjTz0a0KWFAFN+2MevH7/8fKAnpem0ImaSWC1zTQ9GGmTkQwlFQDzyJK7lt/5yF/2
bmhTRxUTKLk/Yh67ZqNmOaFkcKLQMjlwZSyzv1HtY+ZoFF1IKiEpCK59mRqiEyIPNK4fW4aH
s4whi/3Qrk5UKFyWiWKxstDkMyykz0/QpBw41Xh3IbCYHHKybsa3Zza1FZxR0cJhJkYUUTwt
XYiOUsu+SOXXfdjdqPm7pEecCfWVdMZth+IVUUBo+6OZwac+I++MZ9AlPrF92oQXYXzXcb1x
Y/ISgjHwd9vMEYlcux3oBOhCjV1FKuKQ2q5ieiWQDZdUIocuYIoZDaOdoVwdMZRBU/NB+0tW
Rse+CDxYClTfMSqP759N/mX2A3qmHiVFoEHRpZNT1N4KMRgDEqToDJgXPydoq0Eh3/SBo4xB
9mYhrZpM9lGF0HVeKf6sBZCZbVnadMXJpuFFmSzycXu2PZ+0tRjhybWZRvVJahQQWQA9dlfm
DmCIyDfzIxzFVqhlhuagRF5RTN56LWikpDQE0gXHRIvVHKe9vbCpu2OhWFq1FCkSDWXAfYXK
36ZbH4a8qQGg56Q3eWwBFHwqialz/U8hTiZWIo0/RFFL0l1HVmTsqHHzaFqT85RcyvvCC4Pz
2jLaFyDuOR8o6oQhXGHIqVa+ZVrl++vbCKTa0b5hVmGmiSDZnH3L0qqQbDByrlZ8OWHY4q6g
PG5Al1Ju5BmD9lgQqQM6RXVdmLmGPqWtP5BtfuMk0aIwUuR8QC/TuuglZUX6lkKrP9vypQmD
WwIaXtZyMKQWVpb9+FBJKRRhWzjTHdWSXakNVJJcxwXcD7QpYkzaLOWMIQpWKxLbdJFjW1MG
aKY1RQmYYH53KemeDlyocTZhySEzPFkGjsDyVjXaU2k7oatE0WUiVbm+OonQ79IYkrp+FBub
UHlyhrTpuaqUTNmk+zrZJZSBPlPw1IeHAlGfSiaA0OOY+uhQN8asUSrfthSdEGm2pdJw8SFo
kUbzLP1bfiEhlWs8ATbrlyOD5Ph0oqsL9HhqzNtFzYZ2Dsgnt5MX6UXrmn3FX3OSb/NEFtmy
Vv5YRbgL8LJVvBYvEAN6FWFHPhr7VlkJr/dJlqB9i+CNfjrp1kVeuvP5j/jAcW1ruxxh7Q5l
ophAzETj4cnCsS3OOYyLphy43ZnGgFEeDzzcbn+QWmvhOfTQWC1GPBW4iOKAfrij5zyJp5Ke
nytQICppC4Zb+UiehwUw892Y0igElhr+acmUld28gEx7XiLLUSBX8yReKQtdpz1VplkMVeb7
u88+t+XbbwlzDEuwwkQbDAgCltS+65Mm9gqT4tN5QQ0nRQtD0ZewJ/WpPgIocEI7oVOG9SYg
V3eBBTQf0SBBQRxDwvgi5bOEQXMgy7zoFCQUGSSm5OvheqbAE4QBlTRu0nx5YyWBprfoKpNP
jl3cFQVebIQC41cxPeCXvRkN+eSQ1TZnaukjU9uw3eVK4yjmYgYmh05+PMiQVwcZDyPXBEWx
QQqrtLWhPz4pWOt7tqnb2yjy1yUKWQLDJFi1N2HsfDaN4D6YPEuVWRy6/oD4dH9OW25DlqQH
UplF9hW2YO2mSOgQvgJPmsSe4SxN4qL28ALDNjrTq2G7PdzltmWoYXuE6ZR8wanwmCZdBsaf
lv9EnzsvHOyGsWsrylGCwtVLcbEV8NBvLkclRvrCIpopDs0h3fdpl+MNzqAG8dE/nQ8pdAgU
SEN+gxcZnCGITHgk8ilTdfxkXu2dqk0scg1CqLdpyK+iMCDnzvlNG1Ge6VhjvUTlDjYrtFxy
BXrTNHK4N5Xh2OXbzWFrKARjaU/UlkzkmhRyMgm2obgcKzJeusAI9bUCg4IAYEQH11Z4wpqq
KmyyfTtwDdPzdPrxiYQgm+Ma/DPLbDDXfyZvKycoKhO9FgqnKTRmu+TSy49EPMNSseJARmBS
HcYIWxDCb6mwiUHPgqtJq6Z6MkLrNOoOW5mxymRTiC92O/3kEkiVvAAsNhBFR5/wdBi6MW0y
2HJRNUL0WKS5NFEWHd7dkMkBNEaJJlIDsBhgV1eIkXJx0wib1muJxOxClCyrgYpHBUB9ODaD
aEoOtFNRb5o60/KSX4ljgaQovew3TP8nJW+k7k90A5VN08o+RYpu9CBYdEr39HRwoqLjpkx0
/WA7XCSlUiJOvAxdUvdVge+SjSkXZLjUjtvwSaW+E58fL0fjAqVuhmIrOW5jFjoM61KKil41
mm5QEt6HrrgLRhq3BUqkiyWkm97aY9rcSzQsTq2cVj8UajJaFDcBY/ZMauGXggtWHAIAclua
mn1i3GTdkUWN7/MyT6XOXxz7TqcxH39/F/3kjE2YVOySWm1FjiZ1Uja7y3A0MaCJ1IByYuTo
EvQdZQD7rDNBkyNKE86ckYhtKLqWlassNMXD69sjFWPrWGR5g3PRSnPDD3w/XJK+UbLjZpkv
paJIWbI8s6evTx/3z1fD8er1O56XCb2C6dS5UFskwG7skmRJO+Apnx0sBUMwu60TvKWviroh
J1nGlGNArT5n8bRgSsHIG4qxG3Adylw/hJurQxRbFDLVjGVAy6AxVrDWuWkh9J3YP/ffP35I
XaSDv9y/3D+/fsVy/AO2X/74+7e3py9G7i9LrdCSKeHxmpUe2RyyXT4o89UCqO04sdP3GYzD
SZ3RFKY1hKVHtraEse3IWaIjANnPE+Mkg8VyRLyiwFCivbaycyFDyJDIvmlbcVZmYopeipSy
ZZuuyHYKFRYQ9CK3EPlo65MktGXP8kevXAY+t7wylUhlU6uTRijt7ZbWI3DiWctISopNNQQT
k6Lt09vjCb1I/VTkeX5lu7H3syhFUkrbosuz4UgOL3kYCRJ6//Lw9Px8//a3MMYEGK/NqPzS
c+bApphHE+7W8pRSUGbZQ53P4c3TH+8fr9+e/vcRB8vHjxclQ+GL8fp6ZTLlbEOW2GqYIBNj
5MSkIY/KJcbi0vMKbX3BnfE4ikg7CZErT/wwMCfC4M8SqQbHOhuKiZhke6FirhFzgsCI2eKL
KBG7GWzLNuR3Th1LuoySMF/aUsuYZynWOGJpziV86lMDW2cL9YWfo6nn9ZFlaozk7NjKPbcm
CrTVhsC2TS3LNjQbw5wVzP0kc/q5rlSJKOr6ABqSVuqlNA9JbNG2H9KgdKQIGyJWDLHtGkSy
ixzL1A3n0rXsbmuQrcrObGgMz9BQDN9ADT1RbaKmGXH+eX+8grn0avv2+vIBnyzTIV5Bvn/c
v3y5f/ty9dP7/cfj8/PTx+PPV78LrNJ83A8bK4pp7zwjHtik/3+OHq3Y+ktZ7JAom0KM5ADW
7b9WskIG0yKOg0E2OmTUKMp6V3meSbXFAwsR+3+vYIZ/e3z/eHu6f15plaw7X5sXw3EaTZ2M
ssZjVSnGwScWtY4iL3Qo4hyGBEj/7v9Zx6Vnx7PJ85cZdVytuQbXprZoiN2V0M/yU+OFvCIg
/t72DHcGkzTAKrwqYNaqgDlxbJClVam05JbGldESj42nrrSkc7OJ1ZFXOCQf894+GywW2Wfj
NJLZ5vpwHt53elkgV03CYWJbGYA8JaX8nBgSREcflSCppKkGy7uH1U/7BAacZQgLy2RsEwUJ
GbVyaXGmg8wSP1z9ZByWYlFbUE70CiDVVAGotBOqksCJykBkYuyqG43unMmUMvAkB6xLlTyt
5+rzsCLZMBRlW8RpsLk+ZQbAilNssOWrjVLKkZxqHVVsQgSMXTUy0AeaI0O8Isy84pGab7KN
YfU3fJSnttohOF7dQJNXUN4dqyOonq1uxLqhdCLXoohqP+PMHMm0u8yGJRxPCJqMyI7duM3C
mo5riVFMcZqIHH32QReD2pwy0k2Nxae/cMo/GXrIvoYd/B9XybfHt6eH+5dfrl/fHu9froZl
BP2SssUOtlnGQoJsOpaliWzT+bZjXIIRtdUG3aSV6+urfbnLBte16LsSgYGyMxFg0esBJ0P3
qeKDQ1cMU85k8BD5jkPRLtAuRAL2PCUVfbY+J8nzT0y6QBlHT2Spws6mR8fqpdzkNf//fF4E
UYRSNDyi9ArPnUMUTSdXQoJXry/Pf4/a5S9tWcqptuIL9mXlgirB7K31tgDKW1Tu7z5Prx6g
7G+vz+Ox5PvV769vXNshVC83Pt/+ahacerN3jGKDoKYuALU19hIDleZDKyRPP2JiZGNCHNV0
Lty2m5WGctdHu9I8CgAV98kswWEDaq8628FMEgS+oooXZ8e3fEXc2a7KUban07xNvjfg51/d
oXeV4Zj0aTM4ymHXPi/5sRjv2tdv315frgoQ3bff7x8er37Ka99yHPvnSSaeH9/0s9Np9rVi
ZWD3rUNslbQdEct7eH19fr/6eEWpe3x+/X718vhf0zDKDlV1e9kSx9f66RNLfPd2//2Pp4d3
4VB1TC7ZCZclx11ySbqNRmBH2rv2wI6zR6iozpeiPRxd/XhSjkfFVwOgjcOJ/R4LLZL5+dzb
/bfHq99+/P47NHQ2fzCmvIV2rjJ0ZLgUEWjsGupWJAl/F111Srr8AhvZTPoqE71twm/miAQW
ROJ6BfPd4nlgWXZ5qgNp095CHokGFFWyyzdlIX/S3/Z0WgiQaSEgpjW3NZYKmr/Y1Ze8hq06
5bVyyrFpe7nCSXpdFru9XAbQK3IcFq1kowzAUJQs+6Go52fJUnf9AZvX/96/EW9ksTWKrjvI
CbaVo1QFKNAw2wZmZ3xPUiuXZCLrFI+Nrm96u8k7R1rPRKrW90mXKkVJ+fURnXzSFyW0tdoT
RdUPxgL3A3VtAMABZU5JabehnjdgCx07Ryo5+sfBAdgrKfR2xuz+6GTqYwHConzCiQZT/QWf
oiUQn84SZWqErjhSD6Kx7aSI2yiHLLYJQbpUMHTyWgrhKIC30NA3h1wp4IhS9uoLKr23wNIm
WS5aEswkA6dhRI2gEmUCxWi4tcUD25lkSAhApVpAuaTU4/oR252JDz7tpZ5aV5GeHBUHsjPR
+GZo4UjSNDeMp76QZwb4fXHlNX+iks+vATxq4nxkF944x2Kw33RLnWCPbMzvXZsMxQbG9SCt
JJc6b2DiLeT+vr7tGongZlu1qZGkV1rjMA63Y9NkTWOrtRqiwGCHhXN0V2R5bezYpKOMZtjE
68ozJSzMfJWV5kROhQU+qS75kfQWJvGkh35o5GF6qiJfVlYZcbiAhHSwQpmKfqLPlbDOlfz8
eCTxpjcIXLGpYGwMnq8J2eTn31SO8cmKCa5ymEnqpjJM37ihktwFLjR2y75T1qUJU1484eLd
NUnW7/PcPIrNl3qI9niQQF19IVgpgZJxoamSlnzwX7W4XAtaJFLapM7Ly9A2e1AhZWi7EdVW
UuFjusXm/uHP56evf3zAHrNMs8lIRNNgAQNtIOn70ThtyQ2R0ttaluM5g3j5xICqdyJ3txWf
djD6cHR96+YoU2FeiB3x/ftEdOUzRyQPWeN41EtZBI+7neO5TuKpX62GckWGpOrdIN7uLOq4
cqyRb9nXW7Wm+3PkihdJSGvQ/snxha6ZVwW1MedCLBzXQ+b49CS0MPH3lkRZF5ZWjDS2kFUP
FguiPcxYIO5tSnIiuICqBeaCaPEgJSiKAjMkHy0s4OSpYLXq7HWQRbY/g2I67bKNfP+TlLVn
PEKDJ3XWdJQKtvAIb881bIwBRxXsCK0YlvTx7MK2yQKbnHWEtu3Sc1rXVPbjS0ey0fJMnFY+
mTyE/W2PIQeEHS8auyh7oPFs4OX99Rk2N0/v35/vp/21Ph3xvTn86BvRmZFEhn/LQ1Xjdtqi
Gbrm1P8n8IQZGNZTUCC3W7yS4UxEK4LuK2S9HDysl32eGJqd1Lv4G8MGHECthkWNmnYWDmhK
8W5HQNLyMDhyOEqGtkkH27wJJi1etHOLJYm+OdTSlSbrpX2R6V2yV2LbFNkS4mvo8no3UA9I
gI2b/o6/D0QyY+Q3/RTx++MDHlticbTdMH6YeEOe7tXkkrQ7UIObYW0ryhMjHbo8KWXaJi+v
i1qmpXt8vaLSCvilEpvDLunUUlUJ+gi9JUc2+4oZCRiKnd62sDnt5XygYXdNDb0vDpCZdtlu
1SLkVQ9UQxZoTCtqmYx2d53f6r1VbQpDVHaGbztq2WZQ2XRFc1DqcYTtbJkVaj6QNXsnZMzo
+pYavIickpI/FZb4j0V+6pu6IL3/YOluuwRNReXSFeghVE2qGExZ/5psRLNnJA2not4nSrLX
ed0XMGbU7MpUCTbIiOJ6zAl1c2wUWrMrqOEw0fFHSz1lmxm2W2nmKbpDtSnzNskcRZgQ3MWe
pUiThJ9Aqy5VeVNGBGwIKxAHU1tW0I2d2kBVcrsF1WovU7ucS77CW6Rdg96FtcHY1DBx5ebR
WB3KodDET2Coh0LOq+n4gwspGdAU0CU0iL15vLT5kJS3NX1vxhjQIWe6kkCZ4CkbCDa1OWcc
XQE6n1zePimkFyKcxmz/FSI62oQ1SOUd8qTSSNDlMJXL52gMOtRtScY3YL1XKY25w6eBSV+I
scQnkiSmLO0q6YZfm1vMYEFEqvbJUKijB+aLPleH2bCHIVqpdRn2HezIedxeQ4UOuOhd2t6V
0zsVRdUM2mxyLuqK0gsQu8thP1/Kjyon2trgurvNYB1saiMD92h+2R82pqWybHtR/aFWY36f
6aSKxjBnBBCmRWol6mc8rZePx+crPDkgdRDuigPgWRuZEiO/45cmVXbVbznQaxc3FbTEVkuO
/GYCpRwmtaaHvf0+LS54tA+aJ79GEDsNOcYrEdq0kXwEWcGaPRTiQ6iJMp+EjmbR317f/u4/
nh7+JJxrTp8c6j7Z5hjk91Dl1Kf71/cP1HOnS7pMD0w4JzYU2+pS0UdNM9OvbAquL25kcFw5
MXZ+bLIOnThAS0OvxfTLgTo/4TIpTAD4i+/CpaVrpl7YMkKthwsLWwaYO2Ql3U2H+6UadLLL
/oRBIusdmzxYSwEHFdKRfUhta2WOpHYtx4+TFQ6YYakjOQ5isBNXLW5aBa7sx2Sh+5RNMG+E
zrLQTsLTPsxLGyM50ZZCjGM4dKCGXpqqFmdxBrEzDYsiOlpGxvOPCQ1EQ9uZGDtnLSnuosCU
FHPkLh4q8hZoNiB1l5vDJteliGNdcmNKEz0M+K5avpGqhIJnkHoywOuDnt0or0wz6hPt1voW
eW81oT4Zp2ZGHfrp/ILTB1czTro1HdHIF5/KT0TJU91EjGT/EEv7Gd5kzwy00xgGT76yhmQ4
qPPF/JRYTlF39aPiqe14vUVG/OJlOlVaqvNrZHPCm8yh3ZbwBhpcX3Z5wqcAfhpnTnX0VmJm
qHtjnnU+nDfFTs8UXacaJ4M0wSftSmMPZerH9pkYqaObmpVh74uGL4zYoH2bntTkrtOUVtG7
9rZ07Vgd+iPALxqUeZ0ZM/32/PTy50/2z1ewtF91uw3DIZcfL1+Ag1CXrn5alMqfhaN31tGo
Yesiwl1Crog6+nqlTa159cszSJmp7ugVTKk1vpza3IpnebyrmNfIZcLQ5lu1b5HohJ6azOJN
Umrq1rXERh7enr5+lVQY/jUsujvJoEIkXyZXcXILTGgDi/W+oXUvibEaKBt/iWWfw95ikyeD
Mbf122GJNW2pGLgSS5LChkW6UpVgYiGZoCzfJqDDXFinsfZ9+v6BtqLvVx+8kReJrR8/fn96
/oC/Hl5ffn/6evUT9sXH/dvXxw9VXOc2x7fyRV4Phvz5U2sDCLvjIjU2IUw0yttkOg08gtTX
sLnpVC+Yk+Kfpjl6sFeuqhPbvgXlLkHjCOEMeDqOvP/zx3dsHXYO/P798fHhDylod5sn1wfl
9H7ZPlFfLzubbVEXm6QWtqALjY1UdK5uBnmFVj4WI+oKILOpqPCvNtkV4uZfYEqybOzrT+AL
B7c0H177XrJKsjEQ4GrYp7TaKzCl592GdFFZnj2yFQHwZYBKtkm7rKKOX8Xicxu49tjxOowc
+OvSnXOF0hcnshGKtik2ZuSS0v3EQcX8hcZBHRkSkqkbOrpnEIA9jzySVRzE6Cg5DBpS2O9u
ZMK04xJI+3RoYCEjidMN6b/ePh6sf4kMAA6wpZa/Gonmr5QGQlJ95LLPRioQrp4my1RhgUHG
oh62cyw0lQ450tTLoYD9PuwURcliRemO7Bm1dq+BJx9YDmKPOH23uk2UmD7hSTYb/y4nbZEW
lry5i+XKcfo5UpxnjsimS2FTTh0czd9OLjm1b7NetZggWUJqjAsMgfiubqLvb6vIl2MmTBDf
YKykiUGkpCdkAqB4OBQB2fe8BNH+TBcOzUv+hHW9n0LzrbZR0Ze2Y63lwDkcoplGhMz7DAjp
CXTEWQhbydGfCEgvtSXENSJGICKAyrOHiOokRtfCIE3yanb1OnHcuM41OYC5Q6uVTwVH4Go/
an7rRqB3fTcWzRYmYFu5tkulBCORzOEMzWTT/JLnzZGeV67lEKLcHV3p0btIdwkJ6tD1IDnO
ep+6/JvRDMZ+NCtUbaHMg0SvxgYpiD2dzuYW86yzJtfI4BFZMTrRYkiX/dVLEwn5GnJuvTi0
bHLgnz3ozrUvcWbwiI7isxfRUzCSHJsar1XahrEiInhcj6s9dyM+99E9aLD6mqU1iOu4hrZH
hAdLXZ9ZoKQh2S4onnFKejycmy7gfth5oK/n+w/Yon/7rMi2Q8/AgPi0w1OBwScHAK5NkX/Z
JlVhuO0XOENvrU5Z73gWJeaKZZdEJ9cjs6/paWAO13Y4JBEp0F40RMFqVZDF9T9l8elH5TNL
XwXOaotsbryIkvKu9VN6SKHkrM3emldBge4TMy6PHULQYevX6eS72/qmaiexfH35N+72P9H9
xpioa4LBA34SEjBFb6SaYtuXl+1QXZIyIS005m5QHQVKwOXIVGjj12jhSq14KZUiD4e6KhTH
zqOfq8/NNceHpXKYwsOuJDCaH+mFPg6RT6dq8iw46wRnL3YJlbo66jQeIteNCKEag9OSnTnA
XxbtjXP6utnjq2yXHBcYqma13VW/x7o0pNrTGI3n1zsv9NbKWLbTrQuhsad4+LpeSBYSaa0j
Ri+EeunPa0IM6OVILmZ9fSSdek4fsriwZIaDExoc4Cws6NB6LfUhDOhd1XmneA9VJ8jQtQg9
kTlwJKZTHgOVHE/MHIS0GOwfX95f39aX3OlhgJh0hkEDmUNULVmANoet7jGwv61TfPwnxrk8
MepCOPCPFwL/DV10zLXHjiPW5+UWt+y9Uj7E9nmiPqyYnATKpZzPEg9nNOkvEyGfdJ90ZSqa
mWSeF0aWdrI+0hfCdQ+jPVJ/X9gTS+svN4wUIMsxY2c+y6kwZm5aFBee/WILMtjBNX3DmmaO
cBLSJh1z0dniowSRjG8URnCJLT+Su4b1ki+T+X05rie9FNOEo+wJ6YT9619K01025aWRzdFE
hL4rEThMt/5KtQ7ikfqBOZ6V8kRSO64eRXdD5oo8WZVXBI/AkeSpnFOfd2nTu1pu+LJFt5SV
ePByzpBN2x3EczkkVdtANijm57NGF4QIi83Cf+MV20EjtmmhpjzWocx3SUprxiPXJinLhtwr
jAxF3R4GIvmqMkS8OmYtdbZ7ZAFwi2YoxdfajNjxo/AlBUbFqmqTVPX08Pb6/vr7x9X+7++P
b/8+Xn398fj+IdlDTc/LP2GdyrDr8lvFk34/sON5snqrz63SfddU+fwyxmSwU5ZJ3ZzJBzQj
T4ORLs+NHUpbDD5xXdKSehS3P8H+sS4b0YBpoSm6ogDcyKbIC4AR1mmg7TIakJe4fQ/j8aDq
dVVSlJuG1jUKqOCBMt3i58mP314/Hr+/vT4Qi16O1n74bFJYYmfaJZWOlAt0LVqA2tEeYDvT
yUGZqwEqktIXS0QJeMm+f3v/Su4z2qqfhgydovTlvMDiU4FT0S33Ya8/Xr4wN6CLiwEONOnV
T/3f7x+P366al6v0j6fvP+N918PT708Pgk0ZN8/79vz6Fcj9K6E28B1HmtTHRAz1xanlNfyV
9AcpXheDdmeMav3/KbuW7sZxHb2fX5HTq1ncnrYetuVFL2RJttXRK6LsctVGJzfx7fK5SVyT
x5nu+fUDkJRMUGC6Z1MV44P4fgAkCOTVhkZUlVg5YmzdueKocirBhxZzTFuHo8cZ4nBkb3CI
qqbW6Rpr/PgvvjZrNRR4Wi4jYQxMDR/1tg2mjYtNOxna69fL/ePD5dlV5yFivDRYZ5PHlKWJ
mUOMl/j0LuH6/ogrgSxCdWx+2byeTm8P90+nm7vLa37nKubdPk+SPqtg9eQkZNgZYp977vNX
Wajb9P8qj/zQla1eHqPSTHPCru6Djk34xx+u8iN6PPZ35dbhjl7hlR15dLCMnSYuU89epMuo
4vx+UkVaf5yf0AxgnKiTKhV5l5mmG/hT1hMI2ku4Wdm/n8PVs293+rerHXANTMqUF7UQhOU0
blgjWgBh2rRxsjGuBpEqQ31/ac1dSC+15L4SaWWpSNRVjF1eWeC7j/snGLXOiSMfWeK+iWet
KXeNJjlwP+gF0f4VXay5swcV0aJIjM1Gku7K3HiFR5NyRP1RsX6IxcBI6q2nfhoQ5STxz5ZZ
tonowtCCrCvYmLSwOd4mu7wBMYlGpxnoeZ2CaJFzEqRc7MZnDuOnOix6LHhn+BrGxB0rqeZo
yl5lzZVb81yDkCT1vimozRKWTx5a+LMh5uPA5lxCJX/wKb/JbZwb7mWoY7VBDNv68fx0fnGu
Rse8yKtjf0j2bL8yH9Oyfuv4ZervyQyjslbibN+02d1Qav3zZnsBxpcLcSylIJCSD0OI6bpS
Ni/GAYDBBFMFReC4Mp/BEwbc8UR8cMBjsE3H17EQ+SGzS57ay23clsOQAV3AqPB1+wYO9CBl
wJxmOzZWnx2IgQchD3lVddL8BUvTlHsXyzgJQSO58mTHLrnaoGV/vD9cXrTYOK24Yu7jNOl/
I0FgNLAR8So0z0Y0ndrBaWIZH4PAjOKo6U1XzT1q6quRMdJZX+aC2080X9tFq2UQMymIcm7F
9LM58DWIHYSF4YHZCv8G7A0GrMV1S15nxh2ocejmPy75IwLFkLHbh5bDQB7aGON23Xl9AeJR
ZxyNYEDyrKTHIUBDEqc1go4HVaW+SkciF3pD82yabQyDqJgkfN30D/AxDr/13uHxRBTSr1qF
gSm4wiFDvjF2TDywjmZ9lZVm4B0UCUpynpHGEchcadpCy/Bnumr3gh02cZReRVDblIlv98iV
RcfiYa2Xc3Ow53hsIt+1c7Q+WbNkYsZG6UpeZlF88DIJNYz4rfQ6Rs5ckaxNMUF94Uqo/iQG
g9dvJqwyV4Er9MjiG6Iwnp590cZhvLCsOPS3fKsaBR7WS6UBPjycnk6vl+cTDZYSp7nwFr55
vj6QVibpWAThfEKwvdIMZCsyvImapk+aQCN/D0Qr6XUZe2xMTQB84r2jjEnYNPWb+uvSNJLv
ukxgSVU+g3iqnYaBWOHY09iPHC6nYz4YKYzaNp2ZnrElgfoGRRJ7a3Z7FClhlQRHNyiM1OX2
mPx265GnV2US+KY1Dwj8y9CKbq9IrsjuGrUj1QN5wV4QAxKF9DUQkFbzOf+aR2H8O5BSBrTg
TGYAWfjmjiqSOLCci4ruNuIdzyOyjvXGO5xh0JmlZpsKeISuPLUnWxAZQE6w5x6IdNsS/ekV
ps1rnC5nK6+d05m19HzOrBCBFZlTSxJWBH+vPOu3byXts+Z+AIRLmtRitrA+BQrsQhicvYnb
GNRo9gTI5LMGBGAwIPgtH6Go5/sfQXZBQMCq8dI0xILfUbS0irBiH9chEJJ1cLmiV4txugrZ
8DGwivbxMUdBkIo5Kw9p3BfyPCsu43nq688GREaCn9KiiNLWCYjU8njWyjWrDllRNxgsrMsS
16OtQY9kS1ceRV+0KNaSLHd5FAZkpO6OS3aFG86IraKBCrBM7TxHVFm+fgInHsoyfJH1JTwt
cNElfmhGXJeEaG4RVmScKxJv+IuBzWc+G0EIEM+zD+uRxj96QswP2aAwgBAjVCCsFiTUTdKA
pE2GJpJCn3XYBsjKm8ZEwhfKKq61s8VNvvlyiffEbtaq/+ZNe2+AG3/hr+zhUMV7R6zzqoHR
TbpS6joHHJL2BbRElH1Ff6ynH0kFKbeyviIHvsRXBsBN68MkbtEBS02LNyqTIm4JoMywKLM0
wbIbQ8iJgf54p08tiSCu2sC8SxjpNindiLScOGw2MVd/gjQf5qD4uPBOtsss8ri2G0BqZTlQ
QzFj/ZQr3PO9wDAe0MRZJDzTnG7gjcRszmTiLTyx8Pl9RnJAaqxnUQUuV1TdVtQoYN82a3BB
fbDpXORTW/6jrkjCeWjMam3AjY+nyMAA+gLp7s44bBbeZBZrTB+DHYdEB0HmM6HFFGuk2/Kb
jPgkR9WjzUCYovcQ0y/0vdmPp/O/zvY9VBoFDklgVyahb9lojpdeY1oqse+n5/MDlF6Z9NAc
ugLU2manHYg4zhmQJ/tWM0yj6J8tIqJi4G9bPZA0S9hJEhF5vDyTx3c4K9kzMLGcmS4dRZIG
M3vCS5qlNCmiCg3MLR7ox6nFAKNi25jCvmiE+fPwLdJSz+BNzm5jZUd1fhzsqGA4aFf6pgUB
z2AOoVLoVhe6KupOVjTDd0aixmfAoL+zXMJcj2gnSZjZYmRaki2PEX3RwnRv0PAVlxsd+pQX
/+ezhWEhDb8D09ck/o7o79D36O/QEseBwpspAzRf+Y4Rj1jgxma83jFf+GE7lebni2hha54E
Xi0cGiOAyzk5ZIDfkZX6cuFSBwByFHS5nLV2MituvwH5PpgRVSGKzKORtKnRNykNXSTCkNXM
BuFU8V8lSW9h9jKKlgu6K5YLPwgcDmXi49xzyqHziN1FQdwLl/StF5JWrGyoJYF4KjjEtowB
OxYQZ5GPviNs8nxOI3cq6jJwrH4aXrBqt9rMhna3ohuzk0xdTcMa8/jx/Dx4uzSXogmmgxmc
/vvj9PLw54348+X9++nt/L/o+iBNhQ45oxaep8vDv2+2p5fT6/375fWX9Iwhav75gRaU5vRe
zXV4lWHV/Ow79fTj+/3b6ecC2E6PN8Xl8uPmPyFfjKUzlOvNKBfdOzegh/FnThJbeuy6+P/N
8eq0+dOWIsvg73++Xt4eLj9OkPWwJY9Fw7PGGV3mkERekg2khU3y6Xp5bIW/sikhFdzW5dZj
j582x1j4GN3K9L890ix//1c62RPKZh/MzJcXmsDuKlJjCOJjLngIHzR9AqOzCxvutsHwlMCa
JdM+UFv26f7p/bshKg3U1/eb9v79dFNeXs7vtMs2WRjS93OKFLqWpWDGe27XEAmQw2ZtgGZp
VVk/ns+P5/c/mbFV+oFnRrXcdabGvEMdYnYkBH9GQ4PtOuGzS+qu25tbschBQJvT3z7ph0kx
tcc4WK/Q0crz6f7t4/X0fAIx+QOqbc1tHOsh24YaW0xmS7i0zg8l0XGCnpMoZeq3Lc5KGhnt
m2MtIhKvcKDYs0VTLVnhtjwu+JOiQ58nZQizm/SGSXeIEISFimuAwGxcyNlIbp9MgIrPJsSf
pesJWYhykYrjZKJqOjv9B4wTKsfvArLlfTJczASwr6lvA5N6vchSLmuki+w3RldKf0t74dqv
43SPx17skMQIw+Z4LECaMR8Mx00qVlZwD0lbLRwbmFgGfJy/9c5bWus7UNhRnoAQ45nvjZFA
BS+gBA7fYAAtZvwjQYQWjkuKbePHzYw9z1IQNMxsZt453omF70Gbmd5AB9VEFLC9eUQippjP
HyxK0GOj0P0mYs+nkR7app25XKgN2bk923UtdZB2gLEQJsR6C9b9MOS972nIOHKv6hhfP5vf
100X8MGzG6iM9OxHRE+Rex5bWATMW03R3QaBZ90F9ftDLuyzh0FqTUQQeuwRECJLn+uqDnpj
vuCHmcQczs0QWzo8KwAWzgOuSfZi7kU+eTVzSKrCbn8LdLyHPWSlPHj6BFw6wGLhOa5Ev0F/
Qq/x8ildnpSt5f3vL6d3dd/G7Pq30WpJHoZICl+f+Ha2WjlWOH2/W8bbyhnayOThNwiAAs8j
96hJMPfNSFd6zZeJ8PLeUIbPYFMcnAy5XZnMozBw1sPm4+sycLVlQILiUvrkDIqik5OBwSKV
69X/GEOj/3g6/UFOT+Rp0Z6cShFGLV89PJ1fJkPF2FAZXDIMXtxufr5RUdmfLi8nmjv6823b
fdPxBh9Kay4a6dntMxabgZ5soUcfzuRjrANfUr23v4A4LV0g3L/8/vEEf/+4vJ1R35xOHLnz
hH1TE0Phv5MEUfZ+XN5BKjkzhiZzn66HqYAVgVuW8SSDBLeWBHPrVgTDswWeZ6id0SB49PUw
kvg1UjITmaVrClszcVSQrTx0xLtpe142K2/GK2b0E3UK8Hp6Q/GOlcrWzWwxKzmviOuy8emp
NP62xXhJIzJnWuxg3SY7RNqA4Mev1rtmxm9PedJ4LkWvKTxTE1O/ack0zbYWaQpYPllDDjFf
WFeYkuKyRlEg1daBFiwnMw6DxWWCs4Hu5pbiu2v82YLL7lsTg2xpnFdoAq3zQBwqPZzJ2P1/
FdRfzi+/s8NCBCt7zzZ3UPKdHmSXP87PqJHi3H4849rxwA45KT3OWXmryNO4lW8prBfn5drz
A07qbYiXvnaTLpch9Xoj2g174CyOq8CcovB7TnYh+M5YAFCOCWamYdihmAfF7BpJbWztTxtC
P5R7uzyh61SXRY+hF/lixSvqvvCsw5m/SFZtRKfnH3heSNcDc82exbADZaVh94xnyquImgvk
ZY/RHMpaGdgbWHFczRbUTbaiOc6guxI0Gs5FkATIfOpg+2IHjgT8lJQw8KL5wmwerurXtCvW
h9uhzHr1+FS2Hvy8Wb+eH38/ce7gkTmJV15yDPmqIkMHWkLIXdgiuIlvM5LX5f71cWoUfihz
5AbFdG5yu2zISVA0+GH79UOS5SsQSdJCmiGBMrI2ewUB/f6Nm6GIZm1hhhCSNGVjTYlDDF6r
bF8SO7+psxQD1M5daCK7fH3o7GTy8sjqfQoyvYNJkoy4UGytlPWsoUTpqDyw8xvucIQjDLHm
cfr6ULgQtuN/hsH9dhl55BsxEmNRUrU1jl3s8shtX4hI4/W0nLgbRky6Ho94TUniR97BKWJo
A+MGtT15x3oLlhzaVsYukjYid3wFG1OUNEVqTRbqzUiRWpupyyd5oTTuykkL8zSRwUGLScqz
JLbZ8mzXWj7UJf0LdymvERo3CYmjRx+D9m30740+Gh6+n38wcUfaO7tpY5hvOSsmxWnWxviJ
yf4b3vv1cc4rj0PvwmxL8MuGfbs2ckFpyGnT8NbgW+xJkFdQdU/LTNj9JIxQ9ZTlHuqtDQ67
ZG9XaMh0F4lJile5p73r91Xe7HL0UJynGRdlGV8wASNGDzKVO6RWndJPNU1bV2KqSV2u88ry
913X1RbfeDfJDqMmsUUiTKVgDxzQKYSu7aDl2kNjLGYTJ7d6uxwUhDpuU5ioSe5TFR9NSNBP
b9KZ8eZAUMbnKbXxhJYgcbdbrmjLS/JReGx0TAXLZ9fmwZwmW7uSpo77kpXJ8ChImSU5hi4y
7kR6+wmMFqrOoqotZvvFLhWGtcrvJlS1ndjkwWnZlKhcgPdxy9QPDSI/KXaTiy6Gic8/01I8
0qIxrlllx+BoiFmjpLexaNYYU5DqawoUSck6GFOgfMVopycX2LLxzCi1GqkTfE01IaMXM5vY
5TrowLRMw0x2lmuc6tuCxo5XMDrD424VlAcRPZDygNh2WOBCvVNR6tfu6434+OebfDR6Xau1
j5we4GsyBrEv8yYH9dyEkTzIKTKUU7eloPSvRUnQevNZjuxU5MEclBcKz48RZjfECVeA8o2V
hR6/x+2nmKwPMvRxFRf19lO+ab21gwYsw86uSPJ1W+2l5MUa1amvQW3Ej40FEGi3daUq33MZ
9pWQoAsIKFAJn2kBpGJnpUQwwXRaLJTygU6qIwGM1vFpXXROtCGUJ76+q9vWCg3PcOlGZlMQ
MD/Y2MGEKS7MAHUIyaeK6E/ijja2GtFHWEHN/iVZq2nzScXVpJumu8tx8cetdtKJAOWwclf1
0I8kR7V094f2CFvgZ8NHM7YgX9DxoL0iLufyGWyxx2B7zFCS2xnf1wqyKk2nqXw/CplAGfdd
6dAuDMZIhkzCdcfFCfJ970cVqF7CIX8Qrk9WB+SZdnTZBA4qZmiRQd/pJk2G1D3RhDXxKJih
UydZUaOFZptmrD4EPFJAmZZKbnt5cxfOPBd6N10DJF3Gyqsa0W+ysqvVuRjHsxOyGV0pCL5A
0WxxnBaojTECD0OXLxOyKmBX+utrd/nryB1bET45ZVKRc/N0ZLInDM/VfW0yTpBHJi0pp40K
xW3npGG5YkgGZ27Di3/3FB4eKU8G1QhMOlnMm4PvzRhklCC4VcUEuUsPwjPdL66KyM70nSsL
1CmV1wugVNAq9qS54qEDz3fhbKlHDym0UnsBgB+u3pJKsLcK+8bf04TVO3MrWXkAoRWG3rUa
gRzX5E3maieAt2WO/mUKmqOSxm+zrFzH0P1lmXyGT6bLeF4kt43JwLvCWelwUiDFLfW8QnlP
5o0uifA3lgAdc5DDg9J8+g4/tGNCgwBy3yhRnl7Ra7g8vH5WpnNcVFN0u5GWyQL21Kbk/aB8
ltIoM5s+zaAhQ/pLHU9uRP+lzU2HOworYxlbZCh5/PL4ejk/klJWaVs7Yq8O7EOaqRkdeIiX
Yv60j08VUero+YQXyXVSd0Y3aL8K2WZvRitX7IPgnaFbPHLCQ3FIkBnMigefVg5ZXo/gYVeT
OTKfqf1no3OkVcXnaSKNSVHGVXeS4JTFKqhVHZQyZVGdlVFLBnptNMo2rl5sGyrzbqvRR4d3
wydWSdCXMbTutmE1uviA74yvvaLp+uXdJEk8H/ykcVSOLfxjwsr89MvN++v9g7xem042aAzW
SBHXkY4oLAPNESF2hLeOz2C34g+xxnQ7XkQcGRhnJoPt6rSOQ7moZi69npTbdqqz20gfUwvB
Dk8dmxYkHOuNwQSSB+VMwgOj9UrHxpNDw4C4VrvqopdzPtU8yULbKnbAyjjZHWufQddtnm6n
ldy0WfYtm6C6AA0GxLs63TLTa7Ntbh4g1RuePnilmVL6TUkmhEnvLed9HItdZgK6itHHmz1D
rfJa6GHZxElfafcMNpvlpJf0ZdnI3+yA37DHpl023uPBn8R52HAbaZDHRQpDLEOHHK/2tIYR
EuMSdI/PfrfLlU9UPk0WXjhzvAwHBtvjkgGh6+BfeUOoSZEbWMAbYw6IvCavxvG39Mnl9PAk
irx0OS2SNlHwd5Ul3DkDDF9kIPkZNlBJxd+yUVMqi+sqMmZ3mTm5O9TR4jTNqDdajOmtVBCQ
n0Dc6vYtv+qXtejY9dC6tlUvh84YFlEKdPSKOUYbiS6DYYcOMgR7AIlYLXIYBIkxN7MjOu3d
EIO+gdavlQ9i26n7kGBeZD1yuJwuQwpZlbRfoUlZX9WAH7JWRZc0P1LE6V4x4Vjvc5gaFTo4
qWJsYkP+2oiJB/uRYIwkSZL+6PgqxIqDBe/2dcedU8X7rt6IsDfFQUUjJJQECCEhYov22G0y
1FDvIv7qoMESmOYtzIke/iPaEMMSF1/ir1CeuijqL0wdjG/yKjWdmhpImXVxUjdfh2UpuX/4
boYM3IgEtie65ivSJ4KATkSpG2+nj8fLzb9g3DPDXjoh2bCHLtJ79C4v0jYz9oTbrK3MtrNE
dvXf0EtXTWVaCHOmCxVnAeMuZiVXmCrrvtTtrclltkiSNTurFlcsZ6uX1GlMR5c1tPC3Zbuh
WIb+sPlg7LWiNrb8VUMSlD8nnSmp11WFrYLiERlkAFOWax7zFQL8GCLy/vrT+e0SRfPVz95P
JgyVzxp04hkGS/rhiCzdyHLuQCLzRZ2F+E6EPBmwMO4+j7IsnFkuPHfCC96MyGLijjUsltCZ
u7ORTKdPFrJyIKtg4azLio1gbn3uan3iNIkWhtrmI5aLGsdSz9lYkW893zkQAPIoJOOFuLLi
bIhM3KrXQA54csiTJwNwAHgXFyYH/8Lb5OBf+ZM6uobZyOAotzcp+G2dRz0nuIzg3v4ElB88
BIj5kCYDR5KBkMCfpF1ZQGLct5zoO7K0ddzlcUWrI5GvbV4U5t3CgGzjjKeDDnY7JYOeVxCX
uyNQ7fNuSpZVV0Wa1AikoducDeOCHPtuQx54pQV3hLCvchz75IQFCX2Fvn+L/FvcSbceOiTQ
lQ/Eli/EOIQIrsrbxunh4xXtYSeRi24z07E4/gKp5W4PGfTW7oUOu3PYT6sO2TAeifGhljyz
dJpgn+5AqAVlGItP9mIEpcCXJwrkNQW9mWHoGiGv7rs2d9juDbzsPo6OwvNESp8ltKvyQW6I
JxyM8dx3v/70y9s/zy+/fLydXp8vj6efv5+efpxex31yCGp/LSlxDyHKX39CNwGPl/95+cef
98/3/3i6/F9lx7bcto5736/w7NPuTM+ZJidp04c+UBRtsdYtknxJXjSu4yaeNpexnbPtfv0C
pCiRIqRmH85pDEC8giAAgsTm7mX/9O64+baDBu7v3mEK6HucoXdfX779U0/afHd42v2YPGwO
dzsV7N1NXvNA/ePz4ddk/7THC6T7/27cxwpkKjEGA8OB0ix1NAmFwlN4UEd523zSajCk6Miw
KB3TlG6HQQ93o33Ipc+dreaFPJW1+u7h18vpebJ9Puwmz4eJngRbQ9XkoPnlpBqnsSyeMdt7
44DPfbiwk9xbQJ+0nHOZRzZL9RD+JxFTqcd8oE9a2EH2HYwkbJU6r+GDLWFDjZ/nuU89t90N
pgQ8ivZJQWiyGVFuA3cv62rUoH3oforBsywAq1hlSHvLB2JdFcwnd4ln07PzK50+3UWki5gG
Un1Q/4QjbLioIpFy4st+inYX276DrC22168/9ts/vu9+TbZqddwfNi8PvzohYHiiZF7LQ5/z
hJ2soYWRhEVIFFkm/vyDSFyK88vLs0+m0ez19ID3o7ab0+5uIp5Uy/Hy2X/2p4cJOx6ft3uF
CjenjdcVzhOvjhkB4xFsX+z8fZ7FN81t4/4inklMuOv3QlzLJdHliIEwXJpeBOrlF9wOjn4b
A38c+TTwYVVBsc4YdwruFxMXKw+WEdXlVLvWbnJBs8DFDaYhGW5HGg0PbAhaUrXwp0RgngEz
ftHm+DA0fAnz2xlRwDXVo6WmNLf4dseTX0PB/zon5gjBfiVrUkwHMZuL84AYPI0ZmUSopzp7
H8qpz8lkVYNDnYQXBIygk8C9KiSLkjhFEp4NPDNgUQw85NBRnF/SVlBHQScOMMsuYmf+WoQl
fPmBAl+eETtwxP7ygQkBq0CdCbIZMRjVrDj7RAVBNfhVrmvWisf+5cE5DWhlS+kvC1E6uU5a
ZslWTQZSGuG9hGqYiGGSPOlLYc5QeR/6qKwuiV4jfHT26HAro3Gpf4liSxaXbGzSjZSmvhVF
Toc2thPrM3+1ysjBbODdsOjpe358wYuZjt7cdngaO4mFjLC9zTzY1YXPi/HtBdEpgEa0cdwQ
3JaVn8222DzdPT9O0tfHr7uDeW1s776ZaLgsLWXN84K8YGO6VgSzXpZMG9NIWo8DFI4NZXW0
iGBbG6/cq/eLrCqBgayF9m/7+mBNKe0GYfRoSpFUeKOBDzerJS1SSirYaFgsSzqgok+MdsKb
CEWqFNkswKRvFRUfYtkGdZNyzzaKfuy/HjZghB2eX0/7J2JPxVeCKKmk4AX3V5J6VkhvZH5G
cp+GxOnVPfq5JqFRreZoleAtKIdweOCQLhzov9leQU2Wt+Lz2RjJWF+sbZpsZk8jHW/swM4X
railKZZoy69kmo5bTkgYyWlaf/x0Sd9utAhNerBRUQJ05WU+0KamhL7QIBqv7rR2NtEghaCU
1Q5fjW5THV1JsFyHlYRq2GG1kTTcBpy49xfUSaVFes39naWBD/sRWoKB1iOukSRMmapUIy0i
Sir+7pPo9x3DhDYJW9exSD+DrkQSYa4/UtAiWiazSvA3sE0TFzLMFeYy7e96yCMRl2QshkXU
TzdtLwE2FWsnyYxdOC+EGGigurZQilGVQLFWEmczyevZmj73c9pyvqAuoVokJlo246VSSylN
aoCuMUCpiilq2pZl5U2SCHTjKh8wBo539VvIfBHEDU25CFyy9eX7TzUXReM+Fk0oRkeQz3l5
VeeFXCIWy6AoPprM7gNY9Mbgxx0cwx8wOa7QIRkYHGEc2O2mjG/6fVMOjuPkG4ba7u+f9KMH
24fd9vv+6b7boPUhdV0VeKckNL51qz4PX2IW+s7nrfHat2UNCOUBF/BHyIqb39YGuzqfx7Ks
3kChdBL8SzfLBBa8YQyaR1CGVJdYpphBoWDpzN658Yar06JAgjmHOeIt9jAX7MDSS3l+U08L
dQvDnmBDgtnYFpWMndiEInSurxQyEXW6SAKdtbQB6zMN+/Jse6+PS0zUbUd+lxWIKp0KzF5s
HOQDaL8O6OyDS+E7C3gtq0XtfuW6LuCnfVZkLViFgXUlghvqfNYhuCA+ZcWK9bNmOhQwH0NY
8jlv3tM/uRVPAKqQ76zhltOu750BbgmzxO18gwIzTd2XwqeAXChGYfbht6iFgartWoG3WpHs
QcEoJEpGKFUyGIEk9QVJvb6tdbyb87teX33wYOq6Qe6oJw1Gsg/0W74NnhX0veMOXUXA/cTk
NRQliE+/kQH/QjRmwMNt1o46lcLcKNak6mTjcZa4l6o7KJ5A2svGwUGlNi7gFr9UIDhLEDM0
rJ7bj/CoUMglAz1T7+jtjoWphUEWLEHxKgpmbRYRPo/gBs5rEMb81Y58QLiTABHvVGS5Ha6j
+qQRoFzpuHEbhwi8i9NLiRyqfGQ8ZgXm4o2UoW21HruJlZc3KVe006zwBBVNxXMnSgDBaM4O
J9E0LQxguqKEFXNql5rFmgesHlzbMjbOHBUEf7ernTyCZ1VFyH1gsURyOy6Hx7d1xexHdotr
tOqsypNcOs/whjJxfsOPaWiNbiZDFSwN+5DFFtMsxevuOXKB3RWEUwqTor/6edUr4eqnzdZq
itIMOUSdVdgF53h/lTrfzYIvbOYo4ni8ns7IAbUeIOvt2e6BtdFwFPTlsH86fdcvcT3ujvd+
DALsrineDZWJHW6ggZy5b1DAP+gjqUEdjmHPj9ujzo+DFNcLKarPF+0MNvqeV8JFNwZBllWm
BaGIGRVJF96kDNO19yL/HLCflOkmCTLUaUVRAB2lpOkP4T/QaIKsdHLvDI5l687c/9j9cdo/
NkrWUZFuNfzgj/y0gDbUK1akn8/Or97/w2IBMKtKvGaV2PqOYKE2L0tboAl8YQYjV0Hu2GtF
9wSUThW4ksgyYZUtZvsY1ZA6S+Obfhkga8CunC5S/QGLJT6seh70mH/FYFHoPuWZEtZ2ALAN
d6SWVcVKsLnK5spz+iLdm8dYzYhy1e63ZmWEu6+v9/cYAyGfjqfDKz727cTYJgyNPNCwC+ph
iqahJdH4UknMFf6flruGDM/MFWWCcfsjlTQFNqEj7R6ltjjcF2ehI4TxN2XpmW1jEZQML8an
spK3xj/RECmctcS59UUAzQzLHu0AFDmnQ7VNa6qO5JRWSzU+lMv6VpBBaZpgkQL7g2ANYkGU
ro1CjNae9kK8e5QgWugp0mgBRsZgE3rD1zLlm9jMnWAMzhbeWsX4amPENmE9bWGWvEbxCSoS
pppy32XRpSBebeBkP9XX2SolvfEKCWu0zFLHxNMFF1nIqvaiaa9W2MkEH4gDaSSRCoZaoPSn
o8d4hAqWohJpiF4hTruOdHlLWmduhlKlQ1fxU0Q/1UKyWmUYx++Wg6aMJ71aMOYdt+0065gk
DBtLoh+q1c2pV1skXdGjT9GRfpI9vxzfTTCvzOuLFnrR5unevSPA8HUukNBZRsZgOXi8SLMQ
n9+7SNQCskUF4G5esmmFN18W+XiyU42sI7zkX7GS0i1X17BJwFYTNme/7fWfsQ7qEEoQ9nev
KOHtFdHFsBFol3mxY3MhmtdStesDQ0i61fqv48v+CcNKoBWPr6fdzx38sTtt//zzz393q69Z
CmA9LMBOsR0jzRRCDThaPis1H4wwbbEq6VsVGq015rqMhcj94pvLSfrArdEeqbLUNSeYQ7xC
VLsW+mqlG0kY7yWf9j/q1NH/YxxtRRdWVlUwTmlhShUBIQZivwTTCuSCdiz0R3uuxY6ZUc1I
37UcvtucNhMUwFt0ex37U6hcZr7wRPDgDJQz/wsdQgu6DvGVEoywuaHYBF0UnzaXbvTmaIvd
ynkBA5FWUmey0CfTfEHtEPTs4qs6Kp0kAR/+ohBT96u2++q7/vw5WHFdjtx9chvv9hUEhdYI
C2Pl2pK71URV9cUQdlawPKJpjJkwVdhRZL2SVYRGZNmvR6MTdQUTCNBr2SPBp9OQixWl0n2t
QhCoTD3CEB1aFyXDp97sW10K0F8HL5vD/rglWUO1GXaZacxmpVO3MXL639rGZbU7nnCNo3Tm
z3/vDpv7nb0DzRf0hmsWCRpeWQHb8hdtfNgelApPMUhCZ2hUCHRbwPCWDBsxz5ZNh3P7uT2Y
LvQnIz/j+DehGG0N8TwkHxlQZxHK5V7qIbPhiUzREst7YJcyMBJPCdj+YgvQrdUH2n60/gJ0
/GFDbj3jZiFkumphJNbhInH2E91y7YfQcfjk0+0NVcntmBF9YAPgKlv3oMqgn/aAgay0G86t
fbGQVPSuwq17Tj4FtDQ4G1ygd7rqGw264/T5psLJ0H63QIIyCu3svGZeWVNZJLBlUStWd0d5
MbzPQEnlDAZm6DPfO9QMujqCGXDzm5LHCdSFAlT3aX0Evh/0Po2Jgq4EtYODQVMiF4UZX8Ay
GzAP9GYfSL3my7FKjXPrf0kjdvLtIQIA

--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--KsGdsel6WgEHnImy--

