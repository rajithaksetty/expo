package abi29_0_0.host.exp.exponent.modules.universal.sensors;

import java.util.Collections;
import java.util.List;

import abi29_0_0.expo.core.interfaces.InternalModule;
import abi29_0_0.expo.interfaces.sensors.services.MagnetometerUncalibratedService;
import host.exp.exponent.kernel.ExperienceId;
import host.exp.exponent.kernel.services.sensors.SubscribableSensorKernelService;

public class ScopedMagnetometerUncalibratedService extends BaseSensorService implements InternalModule, MagnetometerUncalibratedService {
  public ScopedMagnetometerUncalibratedService(ExperienceId experienceId) {
    super(experienceId);
  }

  @Override
  protected SubscribableSensorKernelService getSensorKernelService() {
    return getKernelServiceRegistry().getMagnetometerUncalibratedKernelService();
  }

  @Override
  public List<Class> getExportedInterfaces() {
    return Collections.<Class>singletonList(MagnetometerUncalibratedService.class);
  }
}

